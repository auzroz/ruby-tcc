require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetVolatileThermostatData", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::GetVolatileThermostatData, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080')
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.get_volatile_thermostat_data( { :thermostatID => THERMOSTAT_ID } )).to_not be_nil
	end
	
	describe '.get_volatile_thermostat_data' do
		it 'should return a get volatile thermostat data result', :vcr => vcr_options  do 
			expect(subject.get_volatile_thermostat_data( { :thermostatID => THERMOSTAT_ID } )).to be_an_instance_of(RubyTCC::GetVolatileThermostatDataResult)
		end

	    context 'when valid credentials are provided' do
	      it 'store a session_id', :vcr => vcr_options  do
	        subject.authenticate_user_login
	        expect(subject.session_id?).to be true
	      end
	    end
    end
end