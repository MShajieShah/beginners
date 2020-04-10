# => Problem #2
# Write a Ruby program to display the current date and time.

time = Time.now
dt = time.strftime("%Y/%m/%d %H/%M")
puts "Current Date&time: "+ dt

# => Problem #6
# Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.

print "First Name: "
rep = gets.chomp
print "Last Name: "
rep1 = gets.chomp
res= rep.reverse + " " +  rep1.reverse
puts res


# => Problem #8
#Write a Ruby program to check two integer values whether either of them is in the range 20..30 inclusive.//

def rang (a,b)
    return (20..30).include?(a) || (20..30).include?(b)

end

puts rang(5,3)
puts rang(0,2)


# => Problem #9
#Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive.//
def rang (a,b,c)
    return (10..20).include?(a) || (10..20).include?(b) || (10..20).include?(c)

end

puts rang(1,31,41)
puts rang(3,6,10)


# => Problem #15
#Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.

def revert(t)
    t[-1] << t[1...-1] << t[0]
end
puts revert("abc")


# => Problem #24
#Write a Ruby program to create a new string from a given string with the last character added at the front and back of the given string. The length of the given string must be 1 or more.

def temp(l)
    l[-1] + l + l[-1]
end
puts temp("abc")
puts temp("abcd")
puts temp("java")


# => Problem #27
#Write a Ruby program to print even numbers from 1 to 10.

a= [1,2,3,4,5,6,7,8,9,10]
print "Even numbers between 2 to 10: ", "\n"
a.each do |x| 
  if x % 2 == 0  
    puts x
end
end


# => Problem #29
#Write a Ruby program to print the elements of a given array.
#Sample array : ["Ruby", 2.3, Time.now]//

a = ["Ruby",2.3,Time.now]
a.each do |num|
    puts num
end


# => Problem #31
#Write a Ruby program to retrieve the total marks where subject name and marks of a student stored in a hash. Go to the editor
#Sample subject and marks : Literature -74, Science – 89, Math-91

subj = {
    'lit' => 74 ,
    'sci' => 89 ,
    'mat' => 91 ,

}

res = subj.values.inject { |memo, n| memo + n }
puts  "Total Marks: " + res.to_s


# => Problem #33
#Write a Ruby program to test whether a year is leap year or not.


def leap?(year)
  (year % 4 == 0)
end

puts leap?(2012)
puts leap?(1500)
puts leap?(1600)
puts leap?(2020)

# => Problem #35
#Write a Ruby program to create a string using the first two characters (if present) of a given string if the first character is 'p' and second one is 's' otherwise return a blank string

def txt(str)
   len = str.length();
   temp = "";
    if(len >= 3)
       if(str.slice(0) == 'p') || (str.slice(1) == 's')
            temp =str.slice(0) + str.slice(1);
        end 
    else
        return temp;
    end
end
puts txt("psabcd")
puts txt("abcd")


# => Problem #36
#Write a Ruby program to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal.


def closest_num (q,w)

    a= (10 - q).abs
    b= (10 - w).abs

    if a < b
        print q

    elsif b < a
            print w 
    
    else
            return 0
    
    end
end

puts closest_num(5,5)
puts closest_num(9,10)
puts closest_num(5,7)



# => Problem #41
#Write a Ruby program to count the number of 5's in a given array.  
def array_count (arry)
    arry.count do |e|
        e == 5
    end
end
puts array_count([1, 2, 9])
puts array_count([1, 2, 5, 9])
puts array_count([1, 2, 5, 9, 5])

# => Problem #42
#Write a Ruby program to check whether one of the first 5 elements in a given array of integers is a 7. The array length may be less than 5.

def is_array_includes_seven?(arr)
    if arr.length > 5
        b = arr.slice(0,5)
        b.include?(7)
    else
        arr.include?(7)                                           #Provided By Moiz
    end
end
puts is_array_includes_seven?([1, 2, 9])
puts is_array_includes_seven?([1, 2, 7, 9])
puts is_array_includes_seven?([1, 2, 2, 7, 2,8,7])



# => Problem #50
#Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0. 


def check_largest_no_against_rem(a, b)
    larger = a > b ? a : b
    
    if (a % 5 == b % 5)
        return larger
    elsif a == b                                                    #Provided BY Moiz
        return 0
    end
end
    puts check_largest_no_against_rem(110,200)
    puts check_largest_no_against_rem(10,10)


# => Problem #7
#Write a Ruby program to accept a filename from the user print the extension of that. 
print "Enter File : "
file = gets.chomp
fextn = File.extname file   
puts "Extention Of The File Is: "+fextn



# => Problem #30
# Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.

def same_last_digit(a, b)
    (a % 10 == b % 10)
end

puts same_last_digit(1,2)
puts same_last_digit(5,5)
puts same_last_digit(26,46)
puts same_last_digit(26,34)


# => Problem #37
#Write a Ruby program to check two integer values and return true if they are both in the range 10..20 inclusive, or they are both in the range 20..30 inclusive.
def is_numbers_within_range?(a,b)
    return (((10..20).include?(a) && (10..20).include?(b)) || ((20..30).include?(a) && (20..30).include?(b)));

end

puts is_numbers_within_range?(5,13)
puts is_numbers_within_range?(20,15)



# => Problem #43
#Write a Ruby program to check whether the sequence of numbers 10, 20, 30 appears anywhere in a given array of integers.

arr = [1,2,3,10,20,30,4,5]
arr.each_with_index do |value, index|
puts index
if value == 10
flag = (arr[index+1] == 20 && arr[index+2] == 30)             #Provided By
next unless flag == true
puts 'Sequence detected'
break
end
end 



# => Problem #13
#Write a Ruby program to create a new string from a given string using the first three characters or whatever is there if the string is less than length 3. Return n copies of the string.

def form_string_and_return_copies(str, n)
if str.length < 3
new_str = "my_#{str}"
puts new_str
end
str*n
end                                                                 #Provided By Moiz
    
puts form_string_and_return_copies('abcdefg', 2 )
puts form_string_and_return_copies('abcdefg',3)
puts form_string_and_return_copies('ab', 5)
