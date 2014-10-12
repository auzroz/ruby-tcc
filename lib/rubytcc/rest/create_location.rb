require 'rubytcc/create_location_result'

module RubyTCC
	module REST
		module CreateLocation
			def create_location(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/CreateLocation', options)
				response = post(request.path, request.options)
				result = CreateLocationResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end