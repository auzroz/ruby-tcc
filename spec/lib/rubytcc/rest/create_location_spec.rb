require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "CreateLocation", :record => :new_episodes, :re_record_interval => 5 * 60 }
location_options = {
						:name => "Sample Location" + Random.new.rand(1..10).to_s,
						:type => "R",
						:countryCode => "US",
						:state => "California",
						:city => "San Francisco",
						:streetAddress => "1 Embarcadero",
						:zipCode => "94133",
						:notificationEmails => "example@example.com",
						:timeZone => "Pacific",
						:useDaylightSavingTime => true
				   }

describe RubyTCC::REST::CreateLocation, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.create_location( location_options )).to_not be_nil
	end
	
	describe '.create_location' do
		it 'should return a create location result', :vcr => vcr_options  do 
			expect(subject.create_location( location_options )).to be_an_instance_of(RubyTCC::CreateLocationResult)
		end
    end
end