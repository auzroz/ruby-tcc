require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetWeatherForecast", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetWeatherForecast, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful' do
		expect(subject.get_weather_forecast( { :sessionID => subject.session_id, :locationID => subject.get_locations.locations.first.location_id  } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_weather_forecast( { :sessionID => subject.session_id, :locationID => subject.get_locations.locations.first.location_id } )).to_not be_nil
	end
	
	describe '.get_weather_forecast' do
		it 'should return a get an array of weather forecast results' do 
			expect(subject.get_weather_forecast( { :sessionID => subject.session_id, :locationID => subject.get_locations.locations.first.location_id } )).to be_an_instance_of(RubyTCC::GetWeatherForecastResult)
		end
    end
end