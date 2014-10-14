module RubyTCC
  	class GetThermostatUIResult
    	include XML::Mapping

    	text_node :result, "Result"
    	object_node :ui, "UI", :class => RubyTCC::UI
	end
end