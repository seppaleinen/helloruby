require_relative 'test_helper'
require 'stringio'

require_relative '../../lib/code.rb'

# Simple testcases
class TestClass < Test::Unit::TestCase
  def test_method
    actual = 3
    assert_equal actual, 3
  end

  def test_car
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
    result = respond_to_downcase('a')
    assert_equal true, result
  end

  def test_concatenation_operator
    result = concatenation_operator('A', 'B')
    assert_equal 'AB', result
  end
end

# Simple testcases
class TestClass < Test::Unit::TestCase
  def test_echo
    str = 'STR'
    out = capture_stdout do
      echo(str)
    end
    assert_equal "STRrts\n", out.string
  end

  def test_for_loop
    out = capture_stdout do
      for_loop
    end
    assert_not_nil out
  end

  def test_if_elsif_david
    out = capture_stdout do
      if_elsif('David')
    end
    assert_equal 'Hej David', out.string
  end

  def test_if_elsif_jackie
    out = capture_stdout do
      if_elsif('Jackie')
    end
    assert_equal 'Du aer fan mys', out.string
  end

  def test_if_elsif_else
    out = capture_stdout do
      if_elsif('hej')
    end
    assert_equal 'Halla hej', out.string
  end

  def test_respond_to_downcase_true
    result = respond_to_downcase('hej')
    assert_equal true, result
  end

  def test_respond_to_downcase_false
    result = respond_to_downcase([])
    assert_equal false, result
  end

  def test_concatenation_operator_1
    result = concatenation_operator('1', '2')
    assert_equal '12', result
  end

  def test_action_if_statement_1
    out = capture_stdout do
      action_if_statement
    end
    assert_equal "Hej\n", out.string
  end

  def test_switch_1
    out = capture_stdout do
      switch_case('1')
    end
    assert_equal "1\n", out.string
  end

  def test_switch_2
    out = capture_stdout do
      switch_case('2')
    end
    assert_equal "2\n", out.string
  end

  def test_switch_3
    out = capture_stdout do
      switch_case('3')
    end
    assert_equal "other\n", out.string
  end

  def test_block
    result = block_func
    assert_equal [:leonardo, :donatello, :raphael, :michaelangelo], result
  end

  def test_proc
    result = proc_func
    assert_equal [:leonardo, :donatello, :raphael, :michaelangelo], result
  end

  def test_lambda
    result = lambda_func
    assert_equal [:leonardo, :donatello, :raphael, :michaelangelo], result
  end
end

# Capture of stdout to STDOUT var
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
