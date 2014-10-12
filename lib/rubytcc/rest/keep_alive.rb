require 'rubytcc/keep_alive_result'

module RubyTCC
	module REST
		module KeepAlive
			def keep_alive(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/KeepAlive', options)
				response = post(request.path, request.options)
				result = KeepAliveResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end