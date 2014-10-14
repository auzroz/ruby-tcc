require 'rubytcc/get_thermostat_result'

module RubyTCC
	module REST
		module GetThermostat
			def get_thermostat(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end