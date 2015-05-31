require 'test_helper'
require 'stringio'

require_relative '../lib/code.rb'


class TestClass < Test::Unit::TestCase
	def testMethod
		actual = 3
		assert_equal actual, 3
	end
	def testCar
		car = Car.new('toyota', 'yaris')
		out = capture_stdout do
			car.start_engine
		end
		assert_equal "Engine idle\n", out.string
		out = capture_stdout do
			car.start_engine
		end
		assert_equal "toyota yaris is already running\n", out.string
	end
	def test_responde_to_downcase
		result = respond_to_downcase("a")
		assert_equal true, result
	end
	def test_concatenation_operator
		result = concatenation_operator("A", "B")
		assert_equal "AB", result
	end
end

class TestClass < Test::Unit::TestCase
	def test_echo
		str = "STR"
		out = capture_stdout do
			echo(str)
		end

	end
	def test_for_loop
		out = capture_stdout do
			for_loop
		end
	end
end

module Kernel
 
  def capture_stdout
    out = StringIO.new
    $stdout = out
    yield
    return out
  ensure
    $stdout = STDOUT
  end
 
end