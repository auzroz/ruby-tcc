require 'rubytcc/rest/authenticate_user_login'
require 'rubytcc/rest/change_thermostat_fan'
require 'rubytcc/rest/change_thermostat_ui'
require 'rubytcc/rest/create_location'
require 'rubytcc/rest/edit_location'
require 'rubytcc/rest/get_comm_task_state'
require 'rubytcc/rest/get_locations'
require 'rubytcc/rest/get_schedule'
require 'rubytcc/rest/get_short_location_info'
require 'rubytcc/rest/get_system_geo_info'
require 'rubytcc/rest/get_thermostat'
require 'rubytcc/rest/get_thermostat_fan'
require 'rubytcc/rest/get_thermostat_humidification'
require 'rubytcc/rest/get_thermostat_ui'
require 'rubytcc/rest/get_user_address_info'
require 'rubytcc/rest/get_volatile_thermostat_data'
require 'rubytcc/rest/get_weather_forecast'
require 'rubytcc/rest/keep_alive'
require 'rubytcc/rest/log_off'

module RubyTCC
	module REST
		module API
			include RubyTCC::REST::AuthenticateUserLogin
			include RubyTCC::REST::ChangeThermostatFan
			include RubyTCC::REST::ChangeThermostatUI
			include RubyTCC::REST::CreateLocation
			include RubyTCC::REST::EditLocation
			include RubyTCC::REST::GetCommTaskState
			include RubyTCC::REST::GetLocations
			include RubyTCC::REST::GetSchedule
			include RubyTCC::REST::GetShortLocationInfo
			include RubyTCC::REST::GetSystemGeoInfo
			include RubyTCC::REST::GetThermostat
			include RubyTCC::REST::GetThermostatFan
			include RubyTCC::REST::GetThermostatHumidification
			include RubyTCC::REST::GetThermostatUI
			include RubyTCC::REST::GetUserAddressInfo
			include RubyTCC::REST::GetVolatileThermostatData
			include RubyTCC::REST::GetWeatherForecast
			include RubyTCC::REST::KeepAlive
			include RubyTCC::REST::LogOff
		end
	end
end
