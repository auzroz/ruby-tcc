require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "ChangeThermostatFan", :record => :new_episodes, :re_record_interval => 300 }
thermostat_options = { :thermostatID => THERMOSTAT_ID, :fanSwitch => "On" }

describe RubyTCC::REST::ChangeThermostatFan, :vcr => vcr_options  do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful'  do
		expect(subject.change_thermostat_fan( thermostat_options ).result ).to eq "Success"
	end

	it 'should be an instance of an object'  do
		expect(subject.change_thermostat_fan( thermostat_options )).to_not be_nil
	end
	
	describe '.change_thermostat_fan' do
		it 'should return a change thermostat fan result'   do 
			expect(subject.change_thermostat_fan( thermostat_options )).to be_an_instance_of(RubyTCC::ChangeRequestResult)
		end
    end
end