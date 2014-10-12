require 'rubytcc/rest/authenticate_user_login'
require 'rubytcc/rest/change_thermostat_fan'
require 'rubytcc/rest/change_thermostat_ui'
require 'rubytcc/rest/get_comm_task_state'
require 'rubytcc/rest/get_locations'
require 'rubytcc/rest/get_schedule'
require 'rubytcc/rest/get_short_location_info'
require 'rubytcc/rest/get_volatile_thermostat_data'

module RubyTCC
	module REST
		module API
			include RubyTCC::REST::AuthenticateUserLogin
			include RubyTCC::REST::ChangeThermostatFan
			include RubyTCC::REST::ChangeThermostatUI
			include RubyTCC::REST::GetCommTaskState
			include RubyTCC::REST::GetLocations
			include RubyTCC::REST::GetSchedule
			include RubyTCC::REST::GetShortLocationInfo
			include RubyTCC::REST::GetVolatileThermostatData
		end
	end
end
