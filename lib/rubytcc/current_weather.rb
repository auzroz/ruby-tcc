module RubyTCC
  class CurrentWeather
    include XML::Mapping

    boolean_node :is_defined, "IsDefined"
    boolean_node :is_valid, "IsValid"
    text_node :condition, "Condition"
    numeric_node :temperature, "Temperature"
    text_node :temp_unit, "TempUnit"
    numeric_node :humidity, "Humidity"
    text_node :phrase_key, "PhraseKey"
  end
end