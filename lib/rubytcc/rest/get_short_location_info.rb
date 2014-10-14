require 'rubytcc/get_short_location_info_result'

module RubyTCC
	module REST
		module GetShortLocationInfo
			def get_short_location_info(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end