require 'rubytcc/fan'

module RubyTCC
  class GetThermostatFanResult
    include XML::Mapping

    text_node :result, "Result"
    object_node :fan, "Fan", :class => RubyTCC::Fan
  end
end