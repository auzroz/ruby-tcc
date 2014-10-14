require 'rubytcc/change_thermostat_ui_result'

module RubyTCC
	module REST
		module ChangeThermostatUI
			def change_thermostat_ui(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end