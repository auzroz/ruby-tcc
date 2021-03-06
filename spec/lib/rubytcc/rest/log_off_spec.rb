require 'rubytcc'
require 'spec_helper'

vcr_options = { :cassette_name => "LogOff", :record => :new_episodes, :re_record_interval => 300 }

describe RubyTCC::REST::LogOff, :vcr => vcr_options do
	
	subject {
		client = CLIENT
		client.authenticate_user_login
		client
	}

	it 'should be successful' do
		expect(subject.log_off( { :sessionID => subject.session_id } ).result ).to eq "Success"
	end

	it 'should be an instance of an object' do
		expect(subject.log_off( { :sessionID => subject.session_id } )).to_not be_nil
	end
	
	describe '.log_off' do
		it 'should return a log off result' do 
			expect(subject.log_off( { :sessionID => subject.session_id } )).to be_an_instance_of(RubyTCC::LogOffResult)
		end
    end

    it 'should throw an error when the session isn\'t valid' do
    	subject.log_off
    	expect { subject.keep_alive }.to raise_error { |error|
    		expect(error).to be_a(RubyTCC::Error::ResultError)
    	}
	end
end