#require_relative '../common_test_helper'
require 'coveralls'
Coveralls.wear_merged!
require 'simplecov'
require 'codeclimate-test-reporter'
SimpleCov.add_filter 'vendor'
SimpleCov.add_filter 'test'
#SimpleCov.formatters = []
SimpleCov.command_name 'Spec tests'
SimpleCov.start
require 'rspec'