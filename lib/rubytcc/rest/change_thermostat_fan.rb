require 'rubytcc/change_request_result'

module RubyTCC
	module REST
		module ChangeThermostatFan
			# @options: Auto, On, Circulate, FollowSchedule, Unknown
			def change_thermostat_fan(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, "ChangeRequest", options)
			end
		end
	end
end