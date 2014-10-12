require 'rubytcc/get_weather_forecast_result'

module RubyTCC
	module REST
		module GetWeatherForecast
			def get_weather_forecast(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetWeatherForecast', options)
				response = post(request.path, request.options)
				result = GetWeatherForecastResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end