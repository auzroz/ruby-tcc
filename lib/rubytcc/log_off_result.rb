module RubyTCC
  class LogOffResult
    include XML::Mapping

    	text_node :result, "Result"
	end
end