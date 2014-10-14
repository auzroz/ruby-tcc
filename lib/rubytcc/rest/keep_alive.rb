require 'rubytcc/keep_alive_result'

module RubyTCC
	module REST
		module KeepAlive
			def keep_alive(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end