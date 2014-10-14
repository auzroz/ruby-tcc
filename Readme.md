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
* CreateLocation
* EditLocation
* GetCommTaskState
* GetLocations
* GetSchedule
* GetShortLocationInfo
* GetSystemGeoInfo
* GetThermostat
* GetThermostatFan
* GetThermostatHumidification
* GetThermostatUI
* GetVolatileThermostatData
* GetWeatherForecast
* KeepAlive
* LogOff

## APIs In Progress
* CancelScheduleChanges
* ChangeSchedule
* SubmitScheduleChanges

## APIs Currently Unable to Test 

Based on the [Honeywell 7-Day Wifi Thermostat (RTH6580WF1001/W)](http://smile.amazon.com/gp/product/B00A97FIG0/ref=oh_details_o00_s00_i00?ie=UTF8&psc=1), the following APIs are not available to test. Any pull requests that can verify the function would be appreciated.

* AcceptInvitation
* ChangeThermostatHumidification
* DeclineInvitation
* DismissSiteAlert
* DismissThermostatAlert
* DismissCommunicationAlert
* EditDealerInformation
* Edit PreferredDealerInformation
* EmailDealer
* GetDREvent
* GetDealerInformation
* GetPendingInvitations
* HideDREvent
* OptOutDREvent
* RequestDealerInvitation
* WiringToolGetThermostats
* WiringToolGetWireMapWithAnswer

## APIs That Are Outside of Scope

These functions are best left to the official app and website.

* CreateAccount
* GetSecurityQuestions
* RegisterGateway
* ResendAccountActivationEmail
* ResetPassword
* UnregisterGateway
* UpdateLocationLevelOfAccess

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
