#!/usr/bin/env ruby

require_relative "Classes/person"
require_relative "Classes/animal"

# person = Person.new
# puts person.say_hello


pig = Animal.new
pig.noise = 'Onik!'
puts pig.noise


# pig.set_noise
# puts pig.make_noise

# //Dice Challenge

require_relative 'Classes/dice'
require_relative 'Classes/dice_set'

puts "-" * 26
puts "Welcome to the Dice Roller"
puts "-" * 26
puts

dice_set = DiceSet.new
puts dice_set.display

response = nil
until response == 'q'
  puts "\nType 'r' to roll again, 'q' to quit"
  print '> '
  response = gets.chomp

  if response == 'r'
    dice_set.roll
    puts "\n" + dice_set.display
  end
  
end

# \\Radio Challenge
require_relative 'classes/radio'

radio = Radio.new
puts radio.volume

# \\ Date and time analysis
require 'date'

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']


puts "What year were you born?"
puts year = gets.chomp

puts "What number month were you born?"
puts month = gets.chomp

puts "What date of the month were you born?"
puts date = gets.chomp

bdate = Date.new(year.to_i, month.to_i, date.to_i)

puts "You were born on a #{days[birthdate.wday]}"

puts "It was the #{birthdate.cweek} week of the year."

puts "It was the #{birthdate.yday} day of the year."

if bdate.leap?
  puts "You were born in a leap year."
else
  puts "You were not born in a leap year."
end
