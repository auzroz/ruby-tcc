require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "AuthenticateUserLogin", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::AuthenticateUserLogin, :vcr => vcr_options do

	subject {
				CLIENT
			}

	it 'should be successful'  do
		expect(subject.authenticate_user_login.result ).to eq "Success"
	end

	it 'should be an instance of an object'  do
			expect(subject.authenticate_user_login).to_not be_nil
	end
	
	describe '.authenticate_user_login' do
		it 'should return an authenticate user login result'  do 
			expect(subject.authenticate_user_login).to be_an_instance_of(RubyTCC::AuthenticateLoginResult)
		end
    end
end
