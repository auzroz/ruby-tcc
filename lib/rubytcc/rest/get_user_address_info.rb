require 'rubytcc/get_user_address_info_result'

module RubyTCC
	module REST
		module GetUserAddressInfo
			def get_user_address_info(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetUserAddressInfo', options)
				response = post(request.path, request.options)
				result = GetUserAddressInfoResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end