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
		print "Du är fan mys"
	else
		print "Hallå #{str}"
	end
end

def splatty(str, *list)
	list.each { |item| puts str + " " + item }
end