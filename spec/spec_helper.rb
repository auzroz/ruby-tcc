require 'bundler'

require 'rspec'
require 'webmock/rspec'

require 'rubytcc'
require 'variables'

require 'support/vcr_setup'

RSpec.configure do |config|
	config.color = true
	config.tty = true
	config.formatter = 'documentation'
end

CLIENT = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD, :proxy => 'http://127.0.0.1:8080')