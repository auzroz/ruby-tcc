require 'rubytcc/schedule'

module RubyTCC
  class GetScheduleResult
    include XML::Mapping

    	text_node :result, "Result"
	    object_node :schedule, "Schedule", :class => RubyTCC::Schedule
	    boolean_node :loading, "Loading"
	end
end