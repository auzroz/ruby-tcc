require 'rubytcc/request'
require 'rubytcc/get_volatile_thermostat_data_result'

module RubyTCC
	module REST
		module GetVolatileThermostatData
			def get_volatile_thermostat_data(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetVolatileThermostatData', options)
				response = post(request.path, request.options)
				result = GetVolatileThermostatDataResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end