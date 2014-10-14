require 'rubytcc/get_comm_task_state_result'

module RubyTCC
	module REST
		module GetCommTaskState
			def get_comm_task_state(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end