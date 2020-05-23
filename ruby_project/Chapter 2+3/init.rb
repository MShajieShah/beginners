#!/usr/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'

person = Person.new
person.first_name = "Shajie"
person.last_name = "Shah"
puts person.full_name
puts person.initial_and_last_name

puts "-----"

pig = Animal.new({noise: 'Oink!'})
puts pig.noise

puts "-----"

Animal.species.each do |type|
  puts type
end

wilbur = Animal.create_a_pig
puts wilbur.noise

puts "-----"

puts Animal.total_animals

require_relative 'classes/radio'

radio = Radio.new
puts radio.volume
##challage radio
require_relative 'classes/secure_radio'

radio = SecureRadio.new
puts radio.status
radio.play
radio.play
radio.play



