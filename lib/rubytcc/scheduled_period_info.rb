module RubyTCC
  class ScheduledPeriodInfo
    include XML::Mapping

    text_node :day, "Day"
    text_node :period_type, "PeriodType"
    boolean_node :is_modified, "IsModified"
    numeric_node :start_time, "StartTime"
    boolean_node :is_cancelled, "IsCancelled"
    numeric_node :heat_setpoint, "HeatSetpoint"
    numeric_node :cool_setpoint, "CoolSetpoint"
    
  end
end