module RubyTCC
  class KeepAliveResult
    include XML::Mapping

    	text_node :result, "Result"
	end
end