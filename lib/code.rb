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
def input()
	puts "input"
	result = gets.chomp
	return result
end

# Iterate from 1..100 and puts result
# Returns nothing
def for_loop()
	for i in 1..100
		puts "#{i}"
	end
end

# Simple elseif case
# Params:
# +str+:: Name to put in elseif
# Returns nothing
def if_elsif(str)
	if "#{str}" == "David"
		print "Hej #{str}"
	elsif "#{str}" == "Jackie"
		print "Du aer fan mys"
	else
		print "Halla #{str}"
	end
end

# Check if object is able to downcase
# Params:
# +object+:: Object to check
# Returns true if downcaseable, false if not
def respond_to_downcase(object)
	return object.respond_to?(:downcase)
end

# Concatenates secondString to firstString
# Params:
# +firstString+:: The string to concatenate with
# +secondString+:: The string to concatenate from
# Returns result of concatenation
def concatenation_operator(firstString, secondString)
	return firstString << secondString
end

# Iterates over list, concatenate every iteration with str and put to stdout
# Params:
# +str+:: String to preface every iteration with
# +list+:: List to iterate over
# Returns nothing
def splatty(str, *list)
	list.each { |item| puts str + " " + item }
end

# Action if-statement
# Takes no parameters
# Puts "Hej" if 2 is more than 1
# Returns nothing
def action_if_statement()
	puts "Hej" if 2 > 1
end

# Switch-case statement
# Params:
# +var+:: String to test
# Returns nothing
def switch_case(var)
	case var
	when "1" then puts "1"
	when "2" then puts "2"
	else
		puts "other"
	end
end

# Block statement, turn array of str to symbols
# Returns nothing
def block_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbols = strings.collect{ |x| x.to_sym }
end

# Proc statement, turn array of str to symbols
# Returns nothing
def proc_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbolize = Proc.new { |x| x.to_sym }
	symbols = strings.collect(&symbolize)
end

# Lambda statement, turn array of str to symbols
# Returns nothing
def lambda_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbolize = lambda { |x| x.to_sym }
	symbols = strings.collect(&symbolize)
end

# Class Car
class Car
	# Initializes car with values
	# Params:
	# +brand+:: Carbrand
	# +model+:: Carmodel
	# Returns nothing
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