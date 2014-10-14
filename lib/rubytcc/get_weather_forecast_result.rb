require 'rubytcc/forecast_day_info'

module RubyTCC
  class GetWeatherForecastResult
    include XML::Mapping

    	text_node :result, "Result"
    	array_node :forecast, "Forecast", "ForecastDayInfo", :class => RubyTCC::ForecastDayInfo
	end
end