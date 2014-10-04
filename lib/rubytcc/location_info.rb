require 'rubytcc/current_weather'
require 'rubytcc/thermostat_info'

module RubyTCC
  class LocationInfo
  	include XML::Mapping

  	numeric_node :location_id, "LocationID"
  	boolean_node :can_control, "CanControl"
  	text_node :name, "Name"
  	text_node :type, "Type"
  	text_node :country, "Country"
  	numeric_node :zip_code, "ZipCode"
  	object_node :current_weather, "CurrentWeather", :class => RubyTCC::CurrentWeather
  	array_node :thermostats, "Thermostats", "ThermostatInfo", :class => RubyTCC::ThermostatInfo
  	text_node :time_zone, "TimeZone"
  end
end