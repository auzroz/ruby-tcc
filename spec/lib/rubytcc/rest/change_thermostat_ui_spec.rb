require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "ChangeThermostatUI", :record => :new_episodes, :re_record_interval => 300 }
thermostat_options = {
						:thermostatID => THERMOSTAT_ID,
						:changeSystemSwitch => false,
						:systemSwitch => 5,
						:changeHeatSetpoint => true,
						:heatSetpoint => 65,
						:changeCoolSetpoint => true,
						:coolSetpoint => 74,
						:changeHeatNextPeriod => true,
						:heatNextPeriod => RubyTCC::Helper.to_period("23:00"),
						:changeCoolNextPeriod => true,
						:coolNextPeriod => RubyTCC::Helper.to_period("23:15"),
						:changeStatusHeat => true,
						:statusHeat => 1,
						:changeStatusCool => false,
						:statusCool => 0
					 }

describe RubyTCC::REST::ChangeThermostatUI, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful'  do
		expect(subject.change_thermostat_ui( thermostat_options ).result ).to eq "Success"
	end

	it 'should be an instance of an object'  do
		expect(subject.change_thermostat_ui( thermostat_options )).to_not be_nil
	end
	
	describe '.change_thermostat_ui' do
		it 'should return a change thermostat ui result'  do 
			expect(subject.change_thermostat_ui( thermostat_options )).to be_an_instance_of(RubyTCC::ChangeThermostatUIResult)
		end
    end
end