require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetThermostatHumidification", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetThermostatHumidification, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful' do
		expect(subject.get_thermostat_humidification( { :thermostatID => THERMOSTAT_ID } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_thermostat_humidification( { :thermostatID => THERMOSTAT_ID } )).to_not be_nil
	end
	
	describe '.get_short_location_info' do
		it 'should return a get short location info result' do 
			expect(subject.get_thermostat_humidification( { :thermostatID => THERMOSTAT_ID } )).to be_an_instance_of(RubyTCC::GetThermostatHumidificationResult)
		end
    end
end