require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "KeepAlive", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::KeepAlive, :vcr => vcr_options do
	
	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}

	it 'should be an instance of an object', :vcr => vcr_options  do
		expect(subject.keep_alive( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.keep_alive' do
		it 'should return a keep alive result', :vcr => vcr_options  do 
			expect(subject.keep_alive( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::KeepAliveResult)
		end
    end
end