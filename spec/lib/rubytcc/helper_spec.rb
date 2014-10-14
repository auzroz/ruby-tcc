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

	describe '#camelize' do
		it 'should not be nil when valid'  do
			expect(RubyTCC::Helper.camelize("get_weather_forecast")).to_not be_nil
		end

		it 'should camlelize an underscored word'  do
			expect(RubyTCC::Helper.camelize("get_weather_forecast")).to eq "GetWeatherForecast"
		end

		it 'should not camlelize a non-underscored word'  do
			expect(RubyTCC::Helper.camelize("ChangeThermostatUIResult")).to eq "ChangeThermostatUIResult"
		end
	end
end