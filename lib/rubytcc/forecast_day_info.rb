module RubyTCC
  class ForecastDayInfo
  	include XML::Mapping

  	text_node :date, "Date"
    text_node :condition, "Condition"
    numeric_node :low, "Low"
    text_node :low_unit, "LowUnit"
    numeric_node :high, "High"
    text_node :high_unit, "HighUnit"
    text_node :phrase, "Phrase"
  end
end