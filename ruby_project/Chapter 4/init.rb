#!/usr/bin/env ruby

require 'date'

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

puts "What year were you born?"
year = gets.chomp

puts "What number month were you born?"
month = gets.chomp

puts "What date of the month were you born?"
date = gets.chomp

birthdate = Date.new(year.to_i, month.to_i, date.to_i)

puts "You were born on a #{days[birthdate.wday]}"

puts "It was the #{birthdate.cweek} week of the year."

puts "It was the #{birthdate.yday} day of the year."

if birthdate.leap?
  puts "You were born in a leap year."
else
  puts "You were not born in a leap year."
end