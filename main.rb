# => Problem #1
#Write a Ruby program to check whether a value exists in an array.
a = ["Red", "Green", "Blue", "White"]
puts "Original array " 
print a ,"\n"
puts "Check if 'Green' in color array ! " 
puts a.include? 'Green'
puts "Check if 'Pink' in color array ! "
puts a.include? 'Pink'


# => Problem #2
#Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more.
def check_array_includes_seven?(arr)
	a = 7
	return arr[0] == a || arr [-1] == a                                
end
puts check_array_includes_seven?([1, 2, 4,5,6,7,7])


# => Problem #3
#Write a Ruby program to pick number of random elements from a given array.
def picks_random_number(a)
	a.sample(3) 
end
puts picks_random_number (['two','three','four','five','six'])
puts picks_random_number (['two','three','four','six'])


# => Problem #5
#Write a Ruby program to compute the sum of elements in a given array.
a = [12, 18,32,33]
puts "Sum of the values of array: "
puts a.sum    								# => a.inject(0, :+)

# => Problem #6
#Write a Ruby program to remove duplicate elements from a given array.
arr = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
puts "Original array:\n"
print arr
puts "\n Array with unique elements:\n"
new_arr = arr.uniq
print new_arr ,"\n"

# => Problem #7
#Write a Ruby program to check two given arrays of integers and test whether they have the same first element or they have the same last element. Both arrays length must be 1 or more. 
def check_first_and_last_digit?(a,b)
	if a.length >= 1 || b.length >= 1
		return (a[0] == b[0] || a[-1] == b[-1])	
	else
		return "Invalid Array"
	end
end
puts check_first_and_last_digit?([1, 2, 3], [4, 3])
puts check_first_and_last_digit?([1], [1])
puts check_first_and_last_digit?([4, 2, 3,4,5], [4, 3])
puts check_first_and_last_digit?([1, 2, 3], [4, 2,3,5,6])

# => Problem #8
#Write a Ruby program to remove blank elements from a given array
colors = ["Red", "Green", "", "Blue", "White"]
print "Original array :"
puts colors
if colors.include?(nil)
	puts "Give me a full String"
else
	print "Remove blanks from array","\n"
	colors.delete("")
	puts colors
end

# => Problem #10
# Write a Ruby program to split a delimited string into an array.

color_string = "Red, Green, Blue, White"
n = "1, 3, 4, 5, 7"
print color_string.split(',') , "\n"
print n.split(",").map { |s| s.to_i }, "\n"

# => Problem #11
# Write a Ruby program to create an array with the elements "rotated left" of a given array of integers length 3
def array_rotation (arr)
	if arr.length == 3
		return arr.rotate
	else
		print "Enter array smaller than length 3"
	end
	print array_rotation([1,2,3]) , "\n"

# => Problem #12
#Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3.
def elements_in_reverse_order(arr)
	if arr.length == 3
		return arr.reverse
	else
		puts "Invalid"
	end
end
print elements_in_reverse_order([1,2,3]) , "\n" 

# => Problem #13
# Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. Replace all the other values to be that value. Return the changed array.
def find_larger_number(arr)
	larger = arr.first > arr.last ? arr.first : arr.last
	arr[1] = larger
	return arr
end
print find_larger_number([1, 2, 1]),"\n" 
print find_larger_number([1, 2, 4]),"\n" 
print find_larger_number([1, 2, 5])

# => Problem #15
#Write a Ruby program to create an array of length 2 containing their middle elements from two given arrays of integers of length 3.

def middle(first,second)
	if first.length == 3 && second.length == 3
		return first[1] , second[1]
	end
end
print middle([1,2,4],[3,4,5,5]) , "\n"


# def middle(first,second)
# 	if first.length == 3 || second.length == 3
# 		return first[(first.length)/2] , second[(second.length)/2]
# 	end
# end
# print middle([1,2,4],[3,4,5]) , "\n"


# => Problem #16
# Write a Ruby program to concatenate array of arrays into one.
a=[1,2,3,[4,[5,6]]]
print "Original Values: "
print a ,"\n"
print "Concatenate array: "
print a.flatten! , "\n"


# => Problem #19
#Write a Ruby program to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.

def check_integers?(nums)
	if nums.length == 2
		nums[0] == 3 && nums[1] == 3 || nums[0] == 5 && nums[1] == 5
	end
end

puts check_integers?([1, 1]) 
puts check_integers?([2, 2]) 
puts check_integers?([3, 3]) 
puts check_integers?([5, 5])   
puts check_integers?([8, 8])


# => Problem #28
#Write a Ruby program to create a new array with the first element of two arrays. If length of any array is 0, ignore that array.
def check_array(a, b)
	if a.length > 0 && b.length > 0
		front = []
		return front = a[0] , b[0]
	else
		puts "One of your array length is zero"
	end
end

print check_array([3, 4, 5, 6], [7, 3, 4]),"\n"
print check_array([3, 4, 5], [6, 7, 3, 4, 7]),"\n"
print check_array([3, 4], []), "\n"


# => Problem #30 
# Write a Ruby program to find the difference between the largest and smallest values of a given array of integers and length 1 or more.
def diff_between_largest_and_smallest_value(arr)
	if arr.length > 1
		a = arr.max
		b = arr.min
		return (a-b)
	else
		puts "Enter array greater than length 1"
	end
end
puts diff_between_largest_and_smallest_value [1,2,3]
puts diff_between_largest_and_smallest_value []

# => Problem #37
# Write a Ruby program to check whether a given value appears everywhere in a given array. A value is everywhere in an array if it presents for every pair of adjacent elements in the array.

def check_duplicates?(arr)
	return arr.uniq.length <= arr.length
end
puts check_duplicates?([2, 8, 2, 9])
puts check_duplicates?([3, 8, 5, 4, 3, 7]) ## not cover after adjacent elements


# => Problem #42
#Write a Ruby program to convert an array into an index hash.
nums = [10, 20, 30, 40]
puts "Original array: #{nums}"
puts "Index Hash: "
a = Hash[nums.map.with_index(1){ |value, idx| [idx,value]}]
puts "#{a}"

# => Problem #43
#Write a Ruby program to find most occurred item in a given array.
def list_duplicates?(arr)
	if arr.uniq.length != arr.length
		a = arr.select { |e| arr.count(e) > 1 }
		puts "Items Value repeated is #{a.uniq} by #{a.count} times"
	else
		puts "Your array has no repeated value#{arr}"
	end
end
puts list_duplicates?([3,5,4])


# 	Problem #48
# Write a Ruby program to sort a given array of strings by length.
arr =  ["abcde", "abdf", "adeab", "abdgeee", "bdefa", "abc", "ab", "a", "bacdef"]
puts "original array #{arr}"
a = arr.sort_by {|x| x.length}
puts "Sorted array #{a}"


# 	Problem #45
# Write a Ruby program to search items start with specified string of a given array.
arr = ['abcde', 'abdf', 'adeab', 'abdgse', 'bdefa', 'bacdef']
puts "Original array: #{arr}"
puts "items start with 'ab':  #{arr.grep(/^ab/)}"
puts "items start with 'b':  #{arr.grep(/^b/)}"





#Method Map and Inject 


a = ["11", "21", "5"]
a.map { |str| str.to_i }


a = ["a", "b", "c"]
a.map { |str| str.upcase }

[1,2,3,4,5].map do |a|
	puts  (a == 2) ? a * a : a
end

array = [1,2,3,4,5]
a= array.map {|n| n+1}
puts "#{array}"
puts "#{a}"


a = [18, 22, 33, 3, 5, 6] 
b = [1, 4, 1, 1, 88, 9]   
x = a.map {|num| num > 10 }
y = b.map {|x| x.odd? }
puts "map method : #{e}"
puts "map method : #{f}"


hash = { bacon: "protein", apple: "fruit" }
hash.map { |k,v| [k, v.to_sym] }


nums = [10, 20, 30, 40]
a = nums.map.with_index(1){ |val, idx| [idx,val]}
puts "#{a}"

#inject


a = ["bar","baz","quux"].inject("foo") {|a,b| a + "!!" + b }
puts a

a =   (1..8).each_with_object([]) { |n,sq| sq << n*n }.inject(0,:+)
puts a

longest = %w{ cat sheep bear }.inject do |a, b|
	a.length > b.length ? a : b
end
longest 

fruits = ['apple','banana','pear']
a = fruits.inject ('')do |memo,fruit|
memo << fruit[0]
end

a = [:uno, :dos, :tres]
b = ["one", "two", "three"]
arr = a.inject({}) do |memo, n|
	memo[n] = b[a.index(n)]
	memo
end
puts arr

arr = [1,2,3,4,5].inject([]) do |res, a|
	next res << a*a if a == 2
	res << a
end
puts arr

arr = [[:student, "shaji"], [:course, "ruby"]].inject({}) do |result, element| 
	result[element.first] = element.last 
	result
end
puts arr

# => Problem #42

def find_most_occurred_item(arr)
return 'Array has unique elements already' if arr.uniq == arr
freq_hash = build_frequency_hash(arr)
max_value = freq_hash.values.max
keys = obtain_freq_hash_keys(freq_hash, max_value)
"#{keys} appears #{max_value} times"
end
																	#Provided by Moiz
def build_frequency_hash(arr)
hash = Hash.new(0)
arr.each do |value|
hash[value] += 1
end
hash
end

def obtain_freq_hash_keys(freq_hash, max_value)
freq_hash.select{ |k,v| v == max_value }.keys
end

puts find_most_occurred_item([1, 2, 3,4,4,4,3,3,3,3])
#to_sym

a = :aBcDeF 
b = :ABCDEF
c = :"\u{e4 f6 fc}"

puts "Symbol a to_sym form : #{a.to_sym}"
puts "Symbol b to_sym form : #{b.to_sym}"

puts "Symbol a === form : #{a === b}"
puts "Symbol b === form : #{b === b}"

puts "Symbol a size form : #{a.size}"
puts "Symbol b size form : #{b.size}"
puts "Symbol c size form : #{c.size}"



#Concatenation
a = "Nice to meet you"
b = ", "
c = "do you like flowers?"
puts a+b+c

a = "foo"
b = a
b << "bar"

puts a
puts b


#select
a = [1,2,3,4,5,6,7,8,100]
puts a.select{|item| item%2==0 }

fruits = {
  apples: 10,
  oranges: 5,
  bananas: 1
}
puts fruits.select { |k, v| v > 1 }



a = %w(apple orange banana)
puts a.select { |v| v.start_with? "a" }



puts [1,2,3,4,5,6].select { |n| n != 4 }


puts [1,2,3,4,5,6,7].select { |x| x.between?(3,7) } 



# each with 

puts (1..10).each_with_object([0]) { |i, a| a << i*2 }


[:foo, :bar, :jazz].each_with_object({}) do |k|
   puts k.to_s.upcase
end



nums = [1, 1, 2, 3, 3, 5]
puts nums.each_with_object(Hash.new(0)) { |k, v| v[k] += 1 }

 
[42,"hi",:hello].each_with_object({}) do |k, h|
puts h[k.to_s] = k
end


 ['a', 'b', 'c'].each_with_index { |k, v| puts v }

