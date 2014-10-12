require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetCommTaskState", :record => :new_episodes, :re_record_interval => 5 * 60 }
thermostat_options = { :thermostatID => THERMOSTAT_ID, :fanSwitch => "On" }

describe RubyTCC::REST::GetCommTaskState, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080')
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.get_comm_task_state( { :commTaskID => subject.change_thermostat_fan( thermostat_options ).comm_task_id } )).to_not be_nil
	end
	
	describe '.get_comm_task_state' do
		it 'should return a get volatile thermostat data result', :vcr => vcr_options  do 
			expect(subject.get_comm_task_state( {:commTaskID => subject.change_thermostat_fan( thermostat_options ).comm_task_id } )).to be_an_instance_of(RubyTCC::GetCommTaskStateResult)
		end
    end
end