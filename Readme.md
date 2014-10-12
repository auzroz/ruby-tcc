ruby-tcc
================

Ruby client for the Honeywell Total Connect Comfort API.

[![Code Climate](https://codeclimate.com/github/auzroz/ruby-tcc/badges/gpa.svg)](https://codeclimate.com/github/auzroz/ruby-tcc)
## Installation

In your Gemfile:

```ruby
gem "ruby-tcc", "~> 0.0.1"
```

or

```ruby
gem 'ruby-tcc', :git => 'https://github.com/auzroz/ruby-tcc'
```

## Usage
First create a Client: 
```ruby
client = RubyTCC::REST::Client.new(:username => USERNAME, :password => PASSWORD)
```
Second, authenticate the login:
```ruby
client.authenticate_user_login
```
Next, calls can be made using the client object to availble APIs.

```ruby
client.get_locations
```

## Currently Supported APIs
* AuthenticateUserLogin
* ChangeThermostatFan
* ChangeThermostatUI
* GetCommTaskState
* GetLocations
* GetSchedule
* GetShortLocationInfo
* GetThermostatUI
* GetVolatileThermostatData
* KeepAlive

## Currently Unsupported APIs
* AcceptInvitation
* CreateAccount
* DeclineInvitation


## Contributing

Feel free to contribute, there are several options available that I don't have the ability to test with a home thermostat.

You need to update your login and thermostat credentials in spec/spec_helper.rb before running them:

```bash
bundle exec rspec spec
```
- or -
```bash
bundle exec guard
```