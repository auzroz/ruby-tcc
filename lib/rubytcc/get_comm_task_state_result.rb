module RubyTCC
  	class GetCommTaskStateResult
    	include XML::Mapping

    	text_node :result, "Result"
    	numeric_node :comm_task_id, "CommTaskID"
    	text_node :state, "State"
    	text_node :fault_reason, "FaultReason"
	end
end