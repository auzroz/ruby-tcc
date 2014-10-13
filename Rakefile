#!/usr/bin/env rake

require 'bundler/setup'
Bundler::GemHelper.install_tasks

# @source: http://simonecarletti.com/blog/2009/09/rake-console/
desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r rubytcc.rb"
end