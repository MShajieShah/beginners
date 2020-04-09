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


def str (q,w)

    a= (10/q)
    b= (10/w)

    if a<b
        puts q

    else

        if a>b
            puts w 

        else a==b
            return 0

        end

    end
end

puts str(5,5)
puts str(5,9)
puts str(5,7)



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

def array_count (arr)
    arr.count do |e|
        e == 7
    end
    if arr.length < 5
        if arr.include?(7)
                return true
        else
                return false
        end
    else
        return false
    end
end
puts array_count([1, 2, 9])
puts array_count([1, 2, 7, 9])
puts array_count([1, 2, 2, 9, 2,8,7])



# => Problem #50
#Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0. 


def str (a,b)

    if (a == b)        
            return 0
    end

    if (a % 5 == b % 5)
        return a < b ? a:b
    end
        return a > b ? a:b

end

puts str(9,12)
puts str(110,200)
puts str(10,10)


