require 'rubytcc/get_volatile_thermostat_data_result'

module RubyTCC
	module REST
		module GetVolatileThermostatData
			def get_volatile_thermostat_data(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end