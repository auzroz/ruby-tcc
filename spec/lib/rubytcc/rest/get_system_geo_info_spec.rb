require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetSystemGeoInfo", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetSystemGeoInfo, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful' do
		expect(subject.get_system_geo_info( { :sessionID => subject.session_id } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_system_geo_info( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.get_system_geo_info' do
		it 'should return a get system geo info result' do 
			expect(subject.get_system_geo_info( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::GetSystemGeoInfoResult)
		end
    end
end