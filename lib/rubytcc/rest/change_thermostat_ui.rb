require 'rubytcc/request'
require 'rubytcc/change_thermostat_ui_result'

module RubyTCC
	module REST
		module ChangeThermostatUI
			def change_thermostat_ui(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/ChangeThermostatUI', options)
				response = post(request.path, request.options)
				result = ChangeThermostatUIResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end