require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetSchedule", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetSchedule, :vcr => vcr_options do
	
	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}


	it 'should be successful' do
		expect(subject.get_schedule( { :thermostatID => THERMOSTAT_ID } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_schedule( { :thermostatID => THERMOSTAT_ID } )).to_not be_nil
	end
	
	describe '.get_schedule' do
		it 'should return a get schedule result' do 
			expect(subject.get_schedule( { :thermostatID => THERMOSTAT_ID } )).to be_an_instance_of(RubyTCC::GetScheduleResult)
		end
    end
end