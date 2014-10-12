module RubyTCC
	class CreateLocationResult
    	include XML::Mapping

    	text_node :location_name, "LocationName"
    	numeric_node :location_id, "LocationID"	
	end
end