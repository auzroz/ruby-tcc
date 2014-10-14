require 'rubytcc/thermostat'

module RubyTCC
  class GetThermostatResult
    include XML::Mapping

    text_node :result, "Result"
    object_node :thermostat, "Thermostat", :class => RubyTCC::Thermostat
  end
end