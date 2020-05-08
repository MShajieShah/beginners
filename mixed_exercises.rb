# => Problem #1
# Given an array with Integer values you need to find all the duplicated numbers.

a = [1,2,3,4,5,6,7,1,2,3,4,5,1,1,1]
print a.select{ |e| a.count(e) > 1 }.uniq ,"\n"

# => Problem #2
# Given an array of characters & one word, find out if the word can be made from these characters.
gues = %w(e n g a r o e)
word = "orange"
puts word.chars.all?{|char| gues.include?(char)}

# => problem #3 
# https://edabit.com/challenge/yZMbHEGss8xwp5JNW
def concat(*a)
 a.flatten
end
print concat([1], [2,4,5], [3], [4], [5], [6], [7]) , "\n"
print concat([1, 2, 3], [4, 5], [6, 7])

#problem #4
# https://edabit.com/challenge/Zxc5HaQ6hKSsuPqsK
def reverse(str)
  str.split.map { |s| s.length < 5 ? s : s.reverse }.join(' ')
end
puts reverse ("this is a catalogy")


#problem #5
# https://edabit.com/challenge/w5b72hSvQpfMnEjCr
def is_valid_PIN(pin)
  a = pin.delete("^0-9")
  if (a.length == 4 || a.length == 6)
    return true
  else
    return false
  end
end

puts is_valid_PIN("0123r5")


#problem #6
# https://edabit.com/challenge/84KYYFBbLvbT2wFt8
def profit(a)
  cp = a["cost_price"]
  sp = a["sell_price"]
  invtry = a["inventory"]
  profit = sp - cp
  return (profit*invtry).round
end

puts profit({
  "cost_price" => 32.67,
  "sell_price" => 45.00,
  "inventory" => 1200
})
#   Problem #7
# https://edabit.com/challenge/5p9H8zCeXaaoMpZ5j
def oldest(people)
  people.each do |k, v| 
    if v == people.values.max
      return k
    end
  end
end
puts  oldest({
  "Emma" => 71,
  "Jack" => 45,
  "Amy" => 15,
  "Ben" => 29
})

#Problem#8
# https://edabit.com/challenge/vs6Dgh4DiSMiPFGhF
require 'date'
def get_day(day)
Date.strptime(day, '%m/%d/%Y').strftime('%A')

end
puts get_day("12/07/2016")


#problem #9
# https://edabit.com/challenge/hMWMeBp4Pgquww9nm
def find_perimeter(h, w)
  (h+w) * 2
end

puts find_perimeter(20, 10)