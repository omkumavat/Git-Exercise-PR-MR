# square of number n

def sq(n)
    return n*n
end

print "Enter a number : "
num=gets.chomp.to_i
puts "Square of number : #{sq(num)}"



# check for even number

def is_even(n)
    return n%2==0
end

print "Enter a number : "
num=gets.chomp.to_i

if is_even(num)
    puts "Number is even"
else 
    puts "Number is odd"
end

