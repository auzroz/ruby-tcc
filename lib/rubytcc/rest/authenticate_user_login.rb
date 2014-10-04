module RubyTCC
	module REST
		module AuthenticateUserLogin
			def authenticate_user_login(options = self.credentials)
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/AuthenticateUserLogin', options)
				response = post(request.path, request.options)
				result = AuthenticateLoginResult.load_from_xml(REXML::Document.new(response.body).root)
				self.session_id = result.session_id
				result
			end
		end
	end
end