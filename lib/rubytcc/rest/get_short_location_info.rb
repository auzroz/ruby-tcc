require 'rubytcc/get_short_location_info_result'

module RubyTCC
	module REST
		module GetShortLocationInfo
			def get_short_location_info(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetShortLocationInfo', options)
				response = post(request.path, request.options)
				result = GetShortLocationInfoResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end