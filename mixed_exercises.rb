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

#problem 9
# https://edabit.com/challenge/gXotyfnw7WCxoCHTC
def daily_streak(arr)
  if arr.include?(true)
    arr.join("").split('false').map {|p| p.count("t")}.max
  else 
    return 0
  end
end
puts daily_streak([true, true, false, true])
puts daily_streak([false, false, false])

#problem 10
  # https://gist.github.com/pinkopaque22/cc4f94bd23dc33d41257
def merge_us(a,b)
 a.merge(b) 
end
 puts   merge_us({ name: "Computer", cost: "$1,000" } ,
  { first_name: "Bob", age: 34 })


def my_keys(a)
 a.map{|k,v| k}
end
puts my_keys({ name: "Computer", cost: "$1,000" })


def do_i_have?(h)
 a = { name: "Computer", cost: "$1,000" }
  h.all? {|k| a.key? k}
end
puts do_i_have?([:cost ,:name])



# https://edabit.com/challenge/mmyJ7SkFErvJTrjuu
def sum_arr(h)
  k = []
  h.each_with_index { |e, i| k[i] = e[0] * e[1]}
  sum = 0
  k.each { |e| sum += e }
  
  return sum
end

def test_fairness(a,b)
  
  return sum_arr(a) == sum_arr(b)
  
end

puts test_fairness(  [[1, 2], [2, 1]] , 
  [[2, 2]] )


# https://edabit.com/challenge/oubiQ6aJo7Da2t8XH

def power_morphic(a,b) 
  c = (a**b).to_i
  puts c
  if a == c.abs % 10
   return true
 else false
 end
end
puts power_morphic(4,9)

# https://edabit.com/challenge/vY4SjdRr7Mu2zJFeQ
def antipodes_average(arr)
  n = []
  a = (arr.size) / 2
  arr.delete_at(a)
  arr = arr.each_slice(a).to_a
  a = arr[1].reverse
  arr.delete_at(1)
  arr = arr.push(a)
  arr.each_with_index {|v, i| ((v + i)/ 2.0) }
end


puts antipodes_average([1,2,3,4,5])