require 'faraday'
require 'rubytcc/client'
require 'rubytcc/error'
require 'rubytcc/rest/api'

# RubyTCC
module RubyTCC
	# REST
	module REST
		# API Client with methods for interacting with the web API
		class Client < RubyTCC::Client
			include RubyTCC::REST::API

			attr_accessor :session_id

			URL_PREFIX = 'https://rs.alarmnet.com'
			ENDPOINT = URL_PREFIX + '/TotalConnectComfort/ws/MobileV2.asmx'

		    # @return [Hash]
		    def connection_options
		    	@connection_options ||= {
		          :builder => middleware,
		          :headers => {
		            # :accept => 'application/json',
		            :user_agent => user_agent,
		          },
		          :request => {
		            :open_timeout => 10,
		            :timeout => 30,
		          },
		          :proxy => proxy,
		          :ssl => { :verify => false}
		        }
		      end

		    # @note Faraday's middleware stack implementation is comparable to that of Rack middleware.  The order of middleware is important: the first middleware on the list wraps all others, while the last middleware is the innermost one.
		    # @see https://github.com/technoweenie/faraday#advanced-middleware-usage
		    # @see http://mislav.uniqpath.com/2011/07/faraday-advanced-http/
		    # @return [Faraday::RackBuilder]
		    def middleware
		        @middleware ||= Faraday::RackBuilder.new do |faraday|
		          # Encodes as "application/x-www-form-urlencoded" if not already encoded
		          faraday.request :url_encoded
		          # Set default HTTP adapter
		          faraday.adapter :net_http
		        end
		     end

		    # Perform an HTTP GET request
		    def get(path, params = {})
		        headers = request_headers(:get, URL_PREFIX + path, params)
		        request(:get, path, params, headers)
		    end

	        # Perform an HTTP POST request
	        def post(path, params = {})
	        	headers = params.values.any? { |value| value.respond_to?(:to_io) } ? request_headers(:post, ENDPOINT + path, params, {}) : request_headers(:post, ENDPOINT + path, params)
	        	request(:post, path, params, headers)
	        end

		    # @return [Boolean]
		    def session_id?
		        !!session_id
		    end

	        # @return [Boolean]
	        def credentials?
	          super || session_id?
      	    end

		private

			def connection
				@connection ||= Faraday.new(URL_PREFIX, connection_options)
			end

			def request(method, path, params = {}, headers = {})
		        connection.send(method.to_sym, path, params) { |request| request.headers.update(headers) }.env
		      rescue Faraday::Error::TimeoutError, Timeout::Error => error
		        raise(RubyTCC::Error::RequestTimeout.new(error))
		      #rescue Faraday::Error::ClientError, JSON::ParserError => error
		      #  raise(RubyTCC::Error.new(error))
		    end

		    def request_headers(method, url, params = {}, signature_params = params)
		        headers = {}
		          headers[:accept]        = '*/*'
		          headers[:content_type]  = 'application/x-www-form-urlencoded; charset=UTF-8'
		        headers
		    end
		end
	end
end