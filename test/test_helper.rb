# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

# Remove tmp dir of dummy app before it's booted.
FileUtils.rm_rf "#{File.dirname(__FILE__)}/dummy/tmp"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/generators"
require "rails/test_help"
require "fileutils"

Rails.backtrace_cleaner.remove_silencers!
