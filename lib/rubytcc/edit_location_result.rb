module RubyTCC
	class EditLocationResult
    	include XML::Mapping

    	text_node :result, "Result"
    	text_node :location_name, "LocationName"
    	numeric_node :location_id, "LocationID"	
	end
end