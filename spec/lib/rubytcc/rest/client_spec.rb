require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetLocations", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::Client, :vcr => vcr_options do

	subject {
		VCR.use_cassette('AuthenticateUserLogin') do
			client = CLIENT
			client.authenticate_user_login
			client
		end
	}
	
	it 'should be an instance of an object' do
		expect(subject).to_not be_nil
	end
	
	describe '.new' do
	    context 'when invalid credentials are provided' do
	      it 'raises a ConfigurationError exception' do
	        expect { RubyTCC::REST::Client.new(:username => [12_345]) }.to raise_exception(RubyTCC::Error::ConfigurationError)
	      end
	    end

	    context 'when no credentials are provided' do
	      it 'does not raise an exception' do
	        expect { RubyTCC::REST::Client.new }.not_to raise_error
	      end
	    end
    end

    describe '.credentials?' do
	    it 'returns true if only session_id is supplied' do
	      client = RubyTCC::REST::Client.new(:session_id => 'ID')
	      expect(client.credentials?).to be true
	    end
	    it 'returns true if all credential parameters are present' do
	      client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :application_id => 'a0c7a795-ff44-4bcd-9a99-420fac57ff04', :application_version => '2', :ui_language => 'English')
	      expect(client.credentials?).to be true
	    end
	    it 'returns false if any credentials are missing' do
	      client = RubyTCC::REST::Client.new(:username => USERNAME)
	      expect(client.credentials?).to be false
	    end
	end
end