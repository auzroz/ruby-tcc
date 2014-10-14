require 'rubytcc/get_user_address_info_result'

module RubyTCC
	module REST
		module GetUserAddressInfo
			def get_user_address_info(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end