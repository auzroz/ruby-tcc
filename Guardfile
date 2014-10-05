# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Note: The cmd option is now required due to the increasing number of ways
#       rspec may be run, below are examples of the most common uses.
#  * bundler: 'bundle exec rspec'
#  * bundler binstubs: 'bin/rspec'
#  * spring: 'bin/rsspec' (This will use spring if running and you have
#                          installed the spring binstubs per the docs)
#  * zeus: 'zeus rspec' (requires the server to be started separetly)
#  * 'just' rspec: 'rspec'
guard :rspec, cmd: 'bundle exec rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/lib/.+_spec\.rb$})
  watch(%r{^spec/lib/rubytcc/.+_spec\.rb$})
  watch(%r{^spec/lib/rubytcc/rest/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { "spec" }
  watch(%r{^lib/rubytcc/(.+)\.rb$})     { "spec" }
  watch(%r{^lib/rubytcc/rest/(.+)\.rb$})     { |m| "spec/lib/rubytcc/rest/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

