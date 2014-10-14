module RubyTCC
  class ChangeThermostatUIResult
    include XML::Mapping

    	text_node :result, "Result"
    	numeric_node :comm_task_id, "CommTaskID"
	end
end