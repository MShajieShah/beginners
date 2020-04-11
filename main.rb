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
colors = ["Red", "Green", "", "Blue", "White",nil]
print "Original array :"
puts colors
print "Remove blanks from array","\n"
colors.reject!{|a| a.to_s.empty? }
puts colors

# => Problem #10
# Write a Ruby program to split a delimited string into an array.

color = "Red, Green, Blue, White"
n = "1, 3, 4, 5, 7"
print color.split(',') , "\n"
print n.split(",").map { |s| s.to_i }, "\n"

# => Problem #11
# Write a Ruby program to create an array with the elements "rotated left" of a given array of integers length 3
def elements_rotated_left(arr)
	if arr.length == 3
		return arr[2],arr[1], arr[0]
	else
		puts "Invalid"	
	end
end
print elements_rotated_left([1,2,3]) , "\n"

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
def find_larger_number(a)
	b = []
	b[0] = a[0]
	if(a[2] >= b[0])
		b[0] = a[2]
		b[1] = b[0]
		b[2] = b[0]
	end
	return b
end
print find_larger_number([1, 2, 3]),"\n" 
print find_larger_number([1, 2, 4]),"\n" 
print find_larger_number([1, 2, 5])

# => Problem #15
#Write a Ruby program to create an array of length 2 containing their middle elements from two given arrays of integers of length 3.

def middle(a,b)
	sorted = a.sort
	sort = b.sort
	list = sorted.length
	if list %2 != 0
		puts sorted[list/2]
	else
		print (sorted[list/2]+sorted[(list/2)-1])/2.0
	end
	list = sorted.length
	if list %2 != 0
		puts sorted[list/2]
	else
		print  (sorted[list/2]+sorted[(list/2)-1])/2.0
	end

end
print middle([1,2,4],[1,2,3])
