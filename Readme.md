ruby-tcc
================

Ruby client for the Honeywell Total Connect Comfort API.

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
* GetLocations
* GetSchedule
* GetShortLocationInfo
* GetVolatileThermostatData

## Currently Unsupported APIs


## Contributing

There are two sets of tests.

The default one uses mock HTTP calls and can be run via:
```bash
rake test:spec
```

The remote ones will issue HTTP calls to the live API. You need to update your login and thermostat credentials in spec/spec_helper.rb before running them:

```bash
rake test:remote:spec
```