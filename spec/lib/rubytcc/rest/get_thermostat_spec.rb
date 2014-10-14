require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetThermostat", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetThermostat, :vcr => vcr_options do
	
	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}

	it 'should be successful' do
		expect(subject.get_thermostat( { :sessionID => subject.session_id, :thermostatID => THERMOSTAT_ID } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_thermostat( { :sessionID => subject.session_id, :thermostatID => THERMOSTAT_ID } )).to_not be_nil
	end
	
	describe '.get_thermostat' do
		it 'should return a get thermostat result' do 
			expect(subject.get_thermostat( { :sessionID => subject.session_id, :thermostatID => THERMOSTAT_ID } )).to be_an_instance_of(RubyTCC::GetThermostatResult)
		end
    end
end