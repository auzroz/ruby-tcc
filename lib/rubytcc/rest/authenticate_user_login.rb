require 'rubytcc/authenticate_login_result'

module RubyTCC
	module REST
		module AuthenticateUserLogin
			def authenticate_user_login(options = self.credentials)
				module_name = Module.nesting[0].to_s.split("::").last
				result = complete_post(module_name, "AuthenticateLogin", options)
				self.session_id = result.session_id
				result
			end
		end
	end
end