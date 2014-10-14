require 'rubytcc/thermostat_alert'
require 'rubytcc/demand_response_event'

module RubyTCC
  class Thermostat < RubyTCC::ThermostatInfo
  	include XML::Mapping

  	array_node :thermostat_alerts, "ThermostatsAlerts", "ThermostatAlert", :class => RubyTCC::ThermostatAlert, :default_value => []
  	object_node :demand_response_event, "DemandResponseEvent", :class => RubyTCC::DemandResponseEvent, :default_value => nil
  end
end