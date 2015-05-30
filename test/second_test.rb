require 'test/unit'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

class TestClass < Test::Unit::TestCase
	def test_method
		assert_equal 1, 1
	end
	def test_second
		assert_equal 2, 2
	end
end