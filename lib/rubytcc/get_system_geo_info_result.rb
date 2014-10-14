require 'rubytcc/country_info'

module RubyTCC
  class GetSystemGeoInfoResult
    include XML::Mapping

    text_node :result, "Result"
    array_node :countries, "Countries", "CountryInfo", :class => RubyTCC::CountryInfo
	end
end