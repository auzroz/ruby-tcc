require 'vcr'

VCR.configure do |c|
	c.cassette_library_dir = 'spec/fixtures'
	c.hook_into :webmock
	c.configure_rspec_metadata!
end