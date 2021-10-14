
class TwinParadox
	attr_accessor :age, :distance, :velocity

	def initialize (options={})
		@age = options[:age] || 25
		@distance = options[:distance] || 10
		@velocity = options[:velocity] || 0.4
	end
	
	def calculate_age
  		return "Invalid Format" unless is_input_valid?
  		time = @distance / @velocity * 2
  		jack = @age + time * Math.sqrt(1 - velocity ** 2)
  		jill = @age + time
  	    "Jack's age is %.1f, Jill's age is %.1f" % [jack, jill]
	end

	def is_input_valid?
		@age != /^\d+$/ && @distance !=  /^\d+$/ && @velocity != /^\d+$/ && @velocity != 0.0
	end
end

puts TwinParadox.new({
	:age => 10,
	:distance => 16.73,
	:velocity => 0.999
}).calculate_age

