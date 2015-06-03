#!/usr/bin/ruby

def echo(str)
	print str.upcase
	puts str.downcase.reverse
end

def input()
	puts "input"
	input = gets.chomp
	echo("#{input}")
end

def for_loop()
	for i in 1..100
		puts "#{i}"
	end
end

def if_elsif(str)
	if "#{str}" == "David"
		print "Hej #{str}"
	elsif "#{str}" == "Jackie"
		print "Du aer fan mys"
	else
		print "Halla #{str}"
	end
end

def respond_to_downcase(object)
	return object.respond_to?(:downcase)
end

def concatenation_operator(firstString, secondString)
	return firstString << secondString
end

def splatty(str, *list)
	list.each { |item| puts str + " " + item }
end

def action_if_statement()
	puts "Hej" if 2 > 1
end

def switch_case()
	var = "2"
	case var
	when "1" then puts "1"
	when "2" then puts "2"
	else
		puts "other"
	end
end

def block_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbols = strings.collect{ |x| x.to_sym }
end

def proc_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbolize = Proc.new { |x| x.to_sym }
	symbols = strings.collect(&symbolize)
end

def lambda_func()
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	symbolize = lambda { |x| x.to_sym }
	symbols = strings.collect(&symbolize)
end

class Car
	def initialize(brand, model)
		@brand = brand
		@model = model
	end
	def start_engine
		if @engine_state
			puts "#{@brand} #{@model} is already running"
		else
			@engine_state = true
			puts 'Engine idle'
		end
	end
end