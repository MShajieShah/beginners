#!/usr/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'

person = Person.new
puts person.say_hello

## For pivate method
person = Person.new
person.first_name = "Shajie"
person.last_name = "Shah"
puts person.full_name
puts person.initial_and_last_name

puts "-----"

pig = Animal.new
pig.set_noise
puts pig.make_noise

puts "-----"

#getter/setter
pig = Animal.new
pig.noise = 'Onik!'
puts pig.noise


## Challenge Dice Roller
require_relative 'classes/dice'
require_relative 'classes/dice_set'

puts "-" * 26
puts "Welcome to the Dice Roller"
puts "-" * 26
puts

dice_set = DiceSet.new
puts dice_set.display

res = nil
until res == 'q'
  puts "\nType 'r' to roll again, 'q' to quit"
  print '> '
  res = gets.chomp

  if res == 'r'
    dice_set.roll
    puts "\n" + dice_set.display
  end
  
end