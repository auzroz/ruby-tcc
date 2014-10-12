module RubyTCC
  class ChangeThermostatUIResult
    include XML::Mapping

    numeric_node :comm_task_id, "CommTaskID"
	end
end