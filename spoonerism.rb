def check_vowels(str)
  str.sub(/([^aeiou]*)(\w*) ([^aeiou]*)(\w*)/, '\3\2 \1\4')      
end							# put ^ at the beginning to indicate that the following range [^aeiou] ,	
puts check_vowels("loud noise") 