require 'rubytcc/get_thermostat_ui_result'

module RubyTCC
	module REST
		module GetThermostatUI
			def get_thermostat_ui(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetThermostatUI', options)
				response = post(request.path, request.options)
				result = GetThermostatUIResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end