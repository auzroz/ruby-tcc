require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "EditLocation", :record => :new_episodes, :re_record_interval => 5 * 60 }
location_options = {
						:name => "Sample Location" + Random.new.rand(1..10).to_s,
						:type => "R",
						:countryCode => "US",
						:state => "California",
						:city => "San Francisco",
						:streetAddress => "5 Embarcadero",
						:zipCode => "94133",
						:notificationEmails => "example@example.com",
						:timeZone => "Pacific",
						:useDaylightSavingTime => true
				   }

describe RubyTCC::REST::EditLocation, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		location_options[:locationID] = subject.get_locations.locations.last.location_id
		expect(subject.edit_location( location_options )).to_not be_nil
	end
	
	describe '.edit_location' do
		it 'should return an edit location result', :vcr => vcr_options  do 
			location_options[:locationID] = subject.get_locations.locations.last.location_id
			expect(subject.edit_location( location_options )).to be_an_instance_of(RubyTCC::EditLocationResult)
		end
    end
end