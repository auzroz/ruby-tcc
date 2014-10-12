require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetShortLocationInfo", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::GetShortLocationInfo, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.get_short_location_info( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.get_short_location_info' do
		it 'should return a get short location info result', :vcr => vcr_options  do 
			expect(subject.get_short_location_info( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::GetShortLocationInfoResult)
		end
    end
end