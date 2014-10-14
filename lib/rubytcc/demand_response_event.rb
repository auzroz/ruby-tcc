module RubyTCC
  class DemandResponseEvent
    include XML::Mapping

    numeric_node :dr_event_id, "DREventId"
    text_node :start_time, "StartTime"
    text_node :end_time, "EndTime"
    boolean_node :opted_out, "OptedOut"
    boolean_node :optoutable, "Optoutable"
    text_node :phase, "Phase"
    numeric_node :heat_setpoint_limit, "HeatSetpointLimit"
    numeric_node :cool_setpoint_limit, "CoolSetpointLimit"
    # array_node :intervals, "Intervals", ?, ? <-- Unable to determine the contents of the interval model
    boolean_node :hidden, "Hidden"
  end
end