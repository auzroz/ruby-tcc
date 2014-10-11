require 'rubytcc/short_location_info'

module RubyTCC
  class GetShortLocationInfoResult
    include XML::Mapping

    text_node :result, "Result"
    array_node :locations, "Locations", "ShortLocationInfo", :class => RubyTCC::ShortLocationInfo
	end
end