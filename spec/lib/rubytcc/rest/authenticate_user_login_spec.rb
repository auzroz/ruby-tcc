require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "AuthenticateUserLogin", :record => :new_episodes, :re_record_interval => 5 * 60 }

describe RubyTCC::REST::AuthenticateUserLogin, :vcr => vcr_options do

	subject {
				CLIENT
			}
	
	it 'should be an instance of an object', :vcr => vcr_options  do
			expect(subject.authenticate_user_login).to_not be_nil
	end
	
	describe '.authenticate_user_login' do
		it 'should return an authenticate user login result', :vcr => vcr_options  do 
			expect(subject.authenticate_user_login).to be_an_instance_of(RubyTCC::AuthenticateLoginResult)
		end
    end
end
