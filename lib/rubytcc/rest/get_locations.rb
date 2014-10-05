module RubyTCC
	module REST
		module GetLocations
			def get_locations(options = {})
				options[:sessionID] ||= self.session_id
				request = RubyTCC::Request.new(self, :post, '/TotalConnectComfort/ws/MobileV2.asmx/GetLocations', options)
				response = post(request.path, request.options)
				result = GetLocationsResult.load_from_xml(REXML::Document.new(response.body).root)
				result
			end
		end
	end
end