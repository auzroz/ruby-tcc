require 'rubytcc/location_info'

module RubyTCC
  class GetLocationsResult
    include XML::Mapping

    text_node :result, "Result"
    array_node :locations, "Locations", "LocationInfo", :class => RubyTCC::LocationInfo
  end
end