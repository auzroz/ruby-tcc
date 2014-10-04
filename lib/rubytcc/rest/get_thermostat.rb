require 'rubytcc/request'
require 'rubytcc/get_thermostat_result'

module RubyTCC
	module REST
		module GetThermostat

			def get_thermostat(options = {})
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetThermostat', options)
				response = post(request.path, request.options).body
				result = RubyTCC::AuthenticateLoginResult.new(response[:get_thermostat_result], request)
				self.session_id = result.session_id
				result
			end
		end
	end
end