require 'rubytcc/error'

module RubyTCC
	class Client
		attr_accessor :username, :password, :application_id, :application_version, :ui_language, :proxy
		attr_writer :user_agent


	    # Initializes a new Client object
	    #
	    # @param options [Hash]
	    # @return [RubyTCC::Client]
		def initialize(options = {})
			options.each do |key, value|
				send(:"#{key}=", value)
			end
			yield(self) if block_given?
			validate_credential_type!
		end

		# @return [String]
		def user_agent
			@user_agent ||= 'Apache-HttpClient/UNAVAILABLE (java 1.4)'
		end

		# @return [String]
		def application_id
			@application_id ||= 'a0c7a795-ff44-4bcd-9a99-420fac57ff04'
		end

		# @return [String]
		def application_version
			@application_version ||= '2'
		end

		# @return [String]
		def ui_language
			@ui_language ||= 'English'
		end

		# @return [Hash]
		def credentials
			{
				:username => username,
				:password => password,
				:ApplicationId => self.application_id,
				:ApplicationVersion => self.application_version,
				:UiLanguage => self.ui_language
			}
		end

		# @return [Boolean]
		def credentials?
			credentials.values.all?
		end

	private

	    # Ensures that all credentials set during configuration are of a
	    # valid type. Valid types are String and Symbol.
	    #
	    # @raise [RubyTCC::Error::ConfigurationError] Error is raised when
	    #   supplied twitter credentials are not a String or Symbol.
		def validate_credential_type!
			credentials.each do |credential, value|
				next if value.nil?
				fail(RubyTCC::Error::ConfigurationError.new("Invalid #{credential} specified: #{value.inspect} must be a string or symbol.")) unless value.is_a?(String) || value.is_a?(Symbol)
			end
		end

	end
end