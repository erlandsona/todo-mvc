#!/usr/bin/env ruby
# -*- ruby -*-

require 'rake/clean'
require 'rake/testtask'

task :default => :spec

Rake::TestTask.new(:spec) do |config|
  # config.libs = "app/**/*{[!_spec]}.rb"
  config.pattern = "**/*_spec.rb"
end
