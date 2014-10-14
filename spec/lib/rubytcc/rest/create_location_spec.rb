require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "CreateLocation", :record => :new_episodes, :re_record_interval => 300 }
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
		VCR.use_cassette('AuthenticateUserLogin', :record => :new_episodes, :re_record_interval => 300) do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be successful' do
		expect(subject.create_location( location_options ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.create_location( location_options )).to_not be_nil
	end
	
	describe '.create_location' do
		it 'should return a create location result' do 
			expect(subject.create_location( location_options )).to be_an_instance_of(RubyTCC::CreateLocationResult)
		end
    end
end