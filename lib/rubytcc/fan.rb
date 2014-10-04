module RubyTCC
  class Fan
    include XML::Mapping

    boolean_node :can_control, "CanControl"
    text_node :position, "Position"
    boolean_node :can_set_auto, "CanSetAuto"
    boolean_node :can_set_circulate, "CanSetCirculate"
    boolean_node :can_follow_schedule, "CanFollowSchedule"
    boolean_node :can_set_on, "CanSetOn"
  end
end