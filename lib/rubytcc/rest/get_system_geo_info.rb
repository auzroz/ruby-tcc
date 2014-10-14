require 'rubytcc/get_system_geo_info_result'

module RubyTCC
	module REST
		module GetSystemGeoInfo
			def get_system_geo_info(options = {})
				module_name = Module.nesting[0].to_s.split("::").last
				options[:sessionID] ||= self.session_id
				complete_post(module_name, module_name, options)
			end
		end
	end
end