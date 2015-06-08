#require "coveralls"
#Coveralls.wear!
#
#require "codeclimate-test-reporter"
#CodeClimate::TestReporter.start
require 'simplecov'
require 'codeclimate-test-reporter'
SimpleCov.add_filter 'vendor'
SimpleCov.formatters = []
SimpleCov.start CodeClimate::TestReporter.configuration.profile

require 'test/unit'