# => Problem #1
# Given an array with Integer values you need to find all the duplicated numbers.

a = [1,2,3,4,5,6,7,1,2,3,4,5,1,1,1]
print a.select{ |e| a.count(e) > 1 }.uniq ,"\n"

# => Problem #2
# Given an array of characters & one word, find out if the word can be made from these characters.
gues = %w(e n g a r o e)
word = "orange"

#All guesses in @word?:
puts word.chars.all?{|char| gues.include?(char)}