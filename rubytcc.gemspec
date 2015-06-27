# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubytcc/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubytcc'
  spec.version       = RubyTCC::VERSION
  spec.authors       = ['auzroz']
  spec.description   = %q{This gem is a Ruby wrapper for the Honeywell Total Connect Comfort SOAP API, built on Savon}
  spec.summary       = %q{Ruby wrapper around the Honeywell Total Connect Comfort SOAP API}
  spec.homepage      = 'http://github.com/auzroz/rubytcc'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday', '>= 0.9.0'
  spec.add_runtime_dependency 'nori', '>= 2.4.0'
  spec.add_runtime_dependency 'xml-mapping', '>= 0.10.0'

  spec.add_development_dependency 'rake', '>= 10.3.2'
  spec.add_development_dependency 'rspec', '>= 3.1.0'
  spec.add_development_dependency 'guard', '>= 2.6.0'
  spec.add_development_dependency 'guard-rspec', '>= 4.3.0'
  spec.add_development_dependency 'ruby_gntp', '>= 0.3.4'
  spec.add_development_dependency 'growl', '>= 1.0.0'
  spec.add_development_dependency 'vcr', '>= 2.9.3'
  spec.add_development_dependency 'webmock', '>= 1.19.0'
end