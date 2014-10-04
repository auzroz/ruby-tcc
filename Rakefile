#!/usr/bin/env rake

require 'bundler/setup'
Bundler::GemHelper.install_tasks

# Install test tasks
require 'rspec/core/rake_task'
namespace :test do
  desc "Run RSpec tests"
  RSpec::Core::RakeTask.new do |task|
    task.name = 'spec'
    task.pattern = './spec/*/*_spec.rb'
  end

  namespace :remote do
    desc "Run RSpec remote tests"
    RSpec::Core::RakeTask.new do |task|
      task.name = 'spec'
      task.pattern = './spec/remote/*_spec.rb'
    end
  end
end

# Run tests by default
task :default => 'test:spec'

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r rubytcc.rb"
end