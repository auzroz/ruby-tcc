require 'rubytcc/get_comm_task_state_result'

module RubyTCC
	module REST
		module GetCommTaskState
			def get_comm_task_state(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetCommTaskState', options)
				response = post(request.path, request.options)
				result = GetCommTaskStateResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end