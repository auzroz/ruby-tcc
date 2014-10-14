require 'rubytcc/get_system_geo_info_result'

module RubyTCC
	module REST
		module GetSystemGeoInfo
			def get_system_geo_info(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetSystemGeoInfo', options)
				response = post(request.path, request.options)
				result = GetSystemGeoInfoResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end