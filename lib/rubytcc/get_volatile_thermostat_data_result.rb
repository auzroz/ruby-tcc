require 'rubytcc/ui'

module RubyTCC
  class GetVolatileThermostatDataResult
    include XML::Mapping

    text_node :result, "Result"
    object_node :ui, "UI", :class => RubyTCC::UI
    text_node :upgrading, "Upgrading"
	end
end