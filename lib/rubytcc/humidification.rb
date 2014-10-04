module RubyTCC
  class Humidification
    include XML::Mapping

    boolean_node :can_control_humidification, "CanControlHumidification"
    boolean_node :can_control_dehumidification, "CanControlDehumidification"
    numeric_node :humidification_set_point, "HumidificationSetPoint"
    numeric_node :humidification_upper_limit, "HumidificationUpperLimit"
    numeric_node :humidification_lower_limit, "HumidificationLowerLimit"
    text_node :humidification_mode, "HumidificationMode"
    numeric_node :dehumidification_set_point, "DehumidificationSetPoint"
    numeric_node :dehumidification_upper_limit, "DehumidificationUpperLimit"
    numeric_node :dehumidification_lower_limit, "DehumidificationLowerLimit"
    text_node :dehumidification_mode, "DehumidificationMode"  
    numeric_node :deadband, "Deadband"
  end
end