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
#Write a Ruby program to check two integer values whether either of them is in the range 20..30 inclusive.

def rang (a,b)
    return (a>= 1 && a<=10 ||b>= 1 && b<=10)
end

print rang(5,3) ,"\n"
print rang(0,2) ,"\n"


# => Problem #9
#Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive.
def rang (a,b,c)
    return (a>=1  && a<=10 || b>1 && b<=10 || c>=1 && c<=10 )
end

print rang(1,31,41) ,"\n"
print rang(3,6,10) ,"\n"


# => Problem #15
#Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.

def char(t)
    t[-1] << t[1...-1] << t[0]
end
print char("abc"),"\n"
