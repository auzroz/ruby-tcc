require 'rubytcc/state_info'

module RubyTCC
  class CountryInfo
    include XML::Mapping

    	text_node :country_code, "CountryCode"
    	text_node :name, "Name"
    	array_node :states, "States", "StateInfo", :class => RubyTCC::StateInfo
	end
end