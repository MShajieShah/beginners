
#fruits = ['apple','apple','apple']
#fruits.each do |fruits|
#end
#puts "counted: #{fruits.count}"




#Blanket_pattern

#color ="RRGGBBYYKK"
#line = 20

#line.times do |i|
#first = color[0]
#sec = color[1..-1]
#color = sec+first
#puts color
#end



#Guessing_game


#print "What's your name? "
#rep = gets.chomp
#puts "Hello, #{rep}!"
#puts "There are some rules you have to pick some number for guessing whast #in it.
#Note there are three chances....!"
#puts "Enter any key to continue"
#rep= gets.chomp
#puts "Pick A Random
#[1,2,3,4,5,6,7,8,9,10]"

#rep =gets.chomp
 
#if rep.to_i >10

#	print"You should pick a number from given numbers....!!!
#	That was your last Chance
#Pick A Random"
#	rep =gets.chomp
#	if rep.to_i >10
#	puts "Sorry Try Again....!!!!"
#else		

#	puts "Great Guessing"
#end
 
#else if rep.to_i <10
#	number = rand(10+1)

#Guess = 3


#1.upto(Guess) do |guess_num|
#  print "Guess #{guess_num}: "
#  guess = gets.chomp
#  if guess.to_i == number
#    puts "Great guessing, #{rep}!"
#    puts "My number was #{number}."
  #  break
 # else
  #  puts "Sorry, that wasn't it."
   # if guess_num == Guess
  #    puts "That was your last guess."
 #     puts "My number was #{number}."
  #  end
 # end
  
#end
#else 
#	print "You Selected out of range"
#	print "Exit"
#	puts "Sorry Try Again"
#end
	
#end




#Ruby_Blanks


ss = ['verb','adj','adj','noun']
vow =['a','e','i','o','u']

	ans =ss.map do |req|
	arc= vow.include?(req[0]) ? 'an' : 'a'
print "Give me a #{arc} #{req}: "
rep =gets.chomp 

end


text = "I decided to #{ans[0]} a #{ans[1]} party for my #{ans[2]} #{ans[3]}."
puts text 
