module RubyTCC
  class UI
    include XML::Mapping

    text_node :created, "Created"
    boolean_node :thermostat_locked, "ThermostatLocked"
    numeric_node :outdoor_temp, "OutdoorTemp"
    numeric_node :disp_temperature, "DispTemperature"
    numeric_node :heat_setpoint, "HeatSetpoint"
    numeric_node :cool_setpoint, "CoolSetpoint"
    text_node :displayed_units, "DisplayedUnits"
    numeric_node :status_heat, "StatusHeat"
    numeric_node :status_cool, "StatusCool"
    boolean_node :hold_until_capable, "HoldUntilCapable"
    boolean_node :schedule_capable, "ScheduleCapable"
    numeric_node :vacation_hold, "VacationHold"
    boolean_node :dual_setpoint_status, "DualSetpointStatus"
    numeric_node :heat_next_period, "HeatNextPeriod"
    numeric_node :cool_next_period, "CoolNextPeriod"
    numeric_node :heat_lower_setpt_limit, "HeatLowerSetptLimit"
    numeric_node :heat_upper_setpt_limit, "HeatUpperSetptLimit"
    numeric_node :cool_lower_setpt_limit, "CoolLowerSetptLimit"
    numeric_node :cool_upper_setpt_limit, "CoolUpperSetptLimit"
    numeric_node :sched_heat_sp, "SchedHeatSp"
    numeric_node :sched_cool_sp, "SchedCoolSp"
    numeric_node :system_switch_position, "SystemSwitchPosition"
    boolean_node :can_set_switch_auto, "CanSetSwitchAuto"
    boolean_node :can_set_switch_cool, "CanSetSwitchCool"
    boolean_node :can_set_switch_off, "CanSetSwitchOff"
    boolean_node :can_set_switch_heat, "CanSetSwitchHeat"
    boolean_node :can_set_switch_emergency_heat, "CanSetSwitchEmergencyHeat"
    boolean_node :can_set_switch_southern_away, "CanSetSwitchSouthernAway"
    numeric_node :deadband, "Deadband"
    numeric_node :outdoor_humidity, "OutdoorHumidity"
    numeric_node :indoor_humidity, "IndoorHumidity"
    boolean_node :commercial, "Commercial"
  end
end