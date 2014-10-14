require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "GetUserAddressInfo", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::GetUserAddressInfo, :vcr => vcr_options do
	
	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}

	it 'should be successful' do
		expect(subject.get_user_address_info( { :sessionID => subject.session_id } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.get_user_address_info( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.get_user_address_info' do
		it 'should return a get user address info result' do 
			expect(subject.get_user_address_info( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::GetUserAddressInfoResult)
		end
    end
end