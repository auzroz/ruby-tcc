require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "AuthenticateUserLogin", :record => :new_episodes }

describe RubyTCC::REST::AuthenticateUserLogin, :vcr => vcr_options do
	subject { RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080') }

	it 'should be an instance of an object', :vcr => vcr_options  do
			expect(subject.authenticate_user_login).to_not be_nil
	end
	
	describe '.authenticate_user_login' do
		it 'should return an authenticate user login result', :vcr => vcr_options  do 
			expect(subject.authenticate_user_login).to be_an_instance_of(RubyTCC::AuthenticateLoginResult)
		end

	    context 'when valid credentials are provided' do
	      it 'store a session_id', :vcr => vcr_options  do
	        subject.authenticate_user_login
	        expect(subject.session_id?).to be true
	      end
	    end
    end
end
