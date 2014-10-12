module RubyTCC
  	class GetThermostatUIResult
    	include XML::Mapping

    	object_node :ui, "UI", :class => RubyTCC::UI
	end
end