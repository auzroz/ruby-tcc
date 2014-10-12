require 'rubytcc/edit_location_result'

module RubyTCC
	module REST
		module EditLocation
			def edit_location(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/EditLocation', options)
				response = post(request.path, request.options)
				result = EditLocationResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end