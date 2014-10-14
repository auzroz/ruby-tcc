require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetLocations", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetLocations, :vcr => vcr_options do

	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}


	it 'should be successful' do
		expect(subject.get_locations.result ).to eq "Success"
	end

	it 'should be an instance of an object' do
			expect(subject.get_locations).to_not be_nil
	end
	
	describe '.get_locations' do
		it 'should return location info' do 
			expect(subject.get_locations).to be_an_instance_of(RubyTCC::GetLocationsResult)
		end
    end
end
