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
	def test_if_elsif_david
		out = capture_stdout do
			if_elsif("David")
		end
		assert_equal "Hej David", out.string
	end
	def test_if_elsif_jackie
		out = capture_stdout do
			if_elsif("Jackie")
		end
		assert_equal "Du aer fan mys", out.string
	end
	def test_if_elsif_else
		out = capture_stdout do
			if_elsif("hej")
		end
		assert_equal "Halla hej", out.string
	end
	def test_respond_to_downcase_true
		result = respond_to_downcase("hej")
		assert_equal true, result
	end
	def test_respond_to_downcase_false
		result = respond_to_downcase([])
		assert_equal false, result
	end
	def test_concatenation_operator
		result = concatenation_operator("1","2")
		assert_equal "12", result
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