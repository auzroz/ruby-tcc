require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "KeepAlive", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::KeepAlive, :vcr => vcr_options do
	
	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}
	it 'should be successful' do
		expect(subject.keep_alive( { :sessionID => subject.session_id } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.keep_alive( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.keep_alive' do
		it 'should return a keep alive result' do 
			expect(subject.keep_alive( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::KeepAliveResult)
		end
    end
end