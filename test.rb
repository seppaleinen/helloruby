#!/usr/bin/ruby

puts "DAVID".downcase.reverse

puts "skriv nåt"
input = gets.chomp.capitalize!

puts "hej #{input}"


for i in 1..100
	puts "#{i}"
end

if "#{input}" == "David"
	print "Hej #{input}"
elsif "#{input}" == "Jackie"
	print "Du är fan mys"
else
	print "Hallå #{input}
end