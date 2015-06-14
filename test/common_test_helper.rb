require 'coveralls'
Coveralls.wear_merged!
require 'simplecov'
require 'codeclimate-test-reporter'
SimpleCov.add_filter 'vendor'
SimpleCov.formatters = []
SimpleCov.start