require 'rubytcc/humidification'

module RubyTCC
  class GetThermostatHumidificationResult
    include XML::Mapping

    text_node :result, "Result"
    object_node :humidification, "Humidification", :class => RubyTCC::Humidification
  end
end