require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetLocations", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::GetLocations do

	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080')
			client.authenticate_user_login
			client
		end
	}

	describe 'credentials', :vcr => vcr_options do
		it 'should validate and use correct credentials' do
			expect(subject.session_id?).to be true
		end
	end

	it 'should be an instance of an object', :vcr => vcr_options  do
			expect(subject.get_locations).to_not be_nil
	end
	
	describe '.get_locations' do
		it 'should return location info', :vcr => vcr_options  do 
			expect(subject.get_locations).to be_an_instance_of(RubyTCC::GetLocationsResult)
		end

	    context 'when valid credentials are provided' do
	      it 'should provide location info', :vcr => vcr_options  do
	        expect(subject.get_locations.locations.first).to be_an_instance_of(RubyTCC::LocationInfo)
	      end
	    end
    end
end
