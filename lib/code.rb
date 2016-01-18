#!/usr/bin/ruby

# Takes string, prints upcase, and puts downcased and reversed
# Params:
# +str+:: String to print
# Returns nothing
def echo(str)
  print str.upcase
  puts str.downcase.reverse
end

# Asks for input
# Returns chomped result
def input
  puts 'input'
  gets.chomp
end

# Iterate from 1..100 and puts result
# Returns nothing
def for_loop
  [1..100].each do |i|
    puts i.to_s
  end
end

# Simple elseif case
# Params:
# +str+:: Name to put in elseif
# Returns nothing
def if_elsif(str)
  if str.to_s == 'David'
    print "Hej #{str}"
  elsif str.to_s == 'Jackie'
    print 'Du aer fan mys'
  else
    print "Halla #{str}"
  end
end

# Check if object is able to downcase
# Params:
# +object+:: Object to check
# Returns true if downcaseable, false if not
def respond_to_downcase(object)
  object.respond_to?(:downcase)
end

# Concatenates second_string to first_string
# Params:
# +first_string+:: The string to concatenate with
# +second_string+:: The string to concatenate from
# Returns result of concatenation
def concatenation_operator(first_string, second_string)
  first_string << second_string
end

# Iterates over list, concatenate every iteration with str and put to stdout
# Params:
# +str+:: String to preface every iteration with
# +list+:: List to iterate over
# Returns nothing
def splatty(str, *list)
  list.each { |item| puts str + ' ' + item }
end

# Action if-statement
# Takes no parameters
# Puts "Hej" if 2 is more than 1
# Returns nothing
def action_if_statement
  puts 'Hej' if 2 > 1
end

# Switch-case statement
# Params:
# +var+:: String to test
# Returns nothing
def switch_case(var)
  case var
  when '1' then puts '1'
  when '2' then puts '2'
  else
    puts 'other'
  end
end

# Block statement, turn array of str to symbols
# Returns array of symbols
def block_func
  # Rubocop gillar inte strings.collect { |x| x.to_sym }
  array_of_strings.collect(&:to_sym)
end

# Proc statement, turn array of str to symbols
# Returns array of symbols
def proc_func
  symbolize = proc { |x| x.to_sym }
  array_of_strings.collect(&symbolize)
end

# Lambda statement, turn array of str to symbols
# Returns array of symbols
def lambda_func
  symbolize = ->(x) { x.to_sym }
  array_of_strings.collect(&symbolize)
end

# Gets an array of strings
# Returns array of strings
def array_of_strings
  %w(leonardo donatello raphael michaelangelo)
end

# Class Car
class Car
  # Initializes car with values
  # Params:
  # +brand+:: brand of car
  # +model+:: model of car
  # Returns instance of car
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  # Starts engine, and puts result of engine state
  # Returns nothing
  def start_engine
    if @engine_state
      puts "#{@brand} #{@model} is already running"
    else
      @engine_state = true
      puts 'Engine idle'
    end
  end
end
