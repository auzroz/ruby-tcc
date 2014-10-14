require 'rubytcc/get_weather_forecast_result'

module RubyTCC
	module REST
		module GetWeatherForecast
			def get_weather_forecast(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end