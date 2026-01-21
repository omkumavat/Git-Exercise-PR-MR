def calculate_perimeter(length,breadth)
    perimeter=2*length+2*breadth
    return perimeter
end
 
print "Enter length of rectangle : "
length=gets.chomp.to_i
print "Enter breadth of rectangle : "
breadth=gets.chomp.to_i

print "Perimeter of rectangle : "
puts calculate_perimeter(length,breadth)


# demo for logical operators

a=2
b=2

if a==2 && b==2
    puts "a and b are equal to 2"
elsif a==2 || b==2
    puts "a or b are equals to 2"
end

