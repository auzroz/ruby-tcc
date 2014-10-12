require 'rubytcc/forecast_day_info'

module RubyTCC
  class GetWeatherForecastResult
    include XML::Mapping

    array_node :forecast, "Forecast", "ForecastDayInfo", :class => RubyTCC::ForecastDayInfo
	end
end