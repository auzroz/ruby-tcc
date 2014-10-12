require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "ChangeThermostatUI", :record => :new_episodes, :re_record_interval => 5 * 60 }
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
		VCR.use_cassette('AuthenticateUserLogin') do
			client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080')
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.change_thermostat_ui( thermostat_options )).to_not be_nil
	end
	
	describe '.get_volatile_thermostat_data' do
		it 'should return a get volatile thermostat data result', :vcr => vcr_options  do 
			expect(subject.change_thermostat_ui( thermostat_options )).to be_an_instance_of(RubyTCC::ChangeThermostatUIResult)
		end
    end
end