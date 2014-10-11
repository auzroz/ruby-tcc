require 'rubytcc/rest/authenticate_user_login'
require 'rubytcc/rest/get_locations'
require 'rubytcc/rest/get_schedule'
require 'rubytcc/rest/get_short_location_info'
require 'rubytcc/rest/get_volatile_thermostat_data'

module RubyTCC
	module REST
		module API
			include RubyTCC::REST::AuthenticateUserLogin
			include RubyTCC::REST::GetLocations
			include RubyTCC::REST::GetSchedule
			include RubyTCC::REST::GetShortLocationInfo
			include RubyTCC::REST::GetVolatileThermostatData
		end
	end
end
