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

