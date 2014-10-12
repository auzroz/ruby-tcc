require 'rubytcc'
require 'spec_helper'

describe RubyTCC::Helper do
	describe '#to_period' do
		it 'should not be nil when valid'  do
			expect(RubyTCC::Helper.to_period("17:00")).to_not be_nil
		end

		it 'translate a time to a numeric period'  do
			expect(RubyTCC::Helper.to_period("17:00")).to eq 68
		end
	end
end