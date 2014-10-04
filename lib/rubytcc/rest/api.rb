require 'rubytcc/rest/authenticate_user_login'
require 'rubytcc/rest/get_locations'

module RubyTCC
	module REST
		module API
			include RubyTCC::REST::AuthenticateUserLogin
			include RubyTCC::REST::GetLocations
		end
	end
end
