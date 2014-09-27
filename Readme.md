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

## Supported APIs


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