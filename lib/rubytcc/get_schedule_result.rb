require 'rubytcc/schedule'

module RubyTCC
  class GetScheduleResult
    include XML::Mapping

    object_node :schedule, "Schedule", :class => RubyTCC::Schedule
    boolean_node :loading, "Loading"
	end
end