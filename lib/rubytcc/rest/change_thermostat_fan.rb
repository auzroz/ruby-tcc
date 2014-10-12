require 'rubytcc/request'
require 'rubytcc/change_request_result'

module RubyTCC
	module REST
		module ChangeThermostatFan
			# @options: Auto, On, Circulate, FollowSchedule, Unknown
			def change_thermostat_fan(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/ChangeThermostatFan', options)
				response = post(request.path, request.options)
				result = ChangeRequestResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end