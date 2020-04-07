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

print rang(5,3) ,"\n"
print rang(0,2) ,"\n"


# => Problem #9
#Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive.//
def rang (a,b,c)
    return (10..20).include?(a) || (10..20).include?(b) || (10..20).include?(c)

end

print rang(1,31,41) ,"\n"
print rang(3,6,10) ,"\n"


# => Problem #15
#Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.

def charc(t)
    t[-1] << t[1...-1] << t[0]
end
print charc("abc"),"\n"


# => Problem #24
#Write a Ruby program to create a new string from a given string with the last character added at the front and back of the given string. The length of the given string must be 1 or more.

def charc(l)
    l[-1] + l + l[-1]
end
print charc("abc"),"\n"
print charc("abcd"),"\n"
print charc("java")


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
#Sample subject and marks : Literature -74, Science – 89, Math-91//

    subj = {
        'lit' => 74 ,
        'Sci' => 89 ,
        'mat' => 91 ,
        
    }
    
res = subj.values.inject { |key, values| key + values }
puts  "Total Marks: " + res.to_s


# => Problem #33
#Write a Ruby program to test whether a year is leap year or not.


def leap?(year)
  (year % 4 == 0)
end

print leap?(2012), "\n"
print leap?(1500), "\n"
print leap?(1600), "\n"
print leap?(2020), "\n"

# => Problem #35
#Write a Ruby program to create a string using the first two characters (if present) of a given string if the first character is 'p' and second one is 's' otherwise return a blank string

print "Enter char "
char = gets.chomp

    if char[0] == 'p' && char[1] == 's'
        puts char
    else 
        return 0;
    end


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

print str(5,5), "\n"
print str(5,9)
print str(5,7)



# => Problem #41
#Write a Ruby program to count the number of 5's in a given array.  
def array_count (arry)
    arry.count do |e|
        e == 5
         
        end
    end
print array_count([1, 2, 9]),"\n"
print array_count([1, 2, 5, 9]),"\n"
print array_count([1, 2, 5, 9, 5]),"\n"

# => Problem #42
#Write a Ruby program to check whether one of the first 5 elements in a given array of integers is a 7. The array length may be less than 5.

def array_count (arry)
    arry.count do |e|
        e == 7
         
        end
    end
print array_count([1, 2, 9]),"\n"
print array_count([1, 2, 7, 9]),"\n"
print array_count([1, 2, 7, 9, 7]),"\n"



# => Problem #50
#Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0. 


def str (q,w)

    a= (q /5)
    b=  (w / 5)

    if a<b
        puts w
    
        else

            if b<a
                puts q 
        
            else a==b
           return 0

        end

    end
end

print str(9,12)
print str(110,200)
print str(10,10), "\n"