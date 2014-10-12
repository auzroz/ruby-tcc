require 'rubytcc/get_schedule_result'

module RubyTCC
	module REST
		module GetSchedule
			def get_schedule(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetSchedule', options)
				response = post(request.path, request.options)
				result = GetScheduleResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end