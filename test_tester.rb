require 'test/unit'
require_relative 'test.rb'

require 'stringio'
 
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
end

