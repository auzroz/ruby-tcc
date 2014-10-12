require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetThermostatUI", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::GetThermostatUI, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.get_thermostat_ui( { :thermostatID => THERMOSTAT_ID } )).to_not be_nil
	end
	
	describe '.get_thermostat_ui' do
		it 'should return a get thermostat ui result', :vcr => vcr_options  do 
			expect(subject.get_thermostat_ui( { :thermostatID => THERMOSTAT_ID } )).to be_an_instance_of(RubyTCC::GetThermostatUIResult)
		end
    end
end