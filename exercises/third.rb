
# print 1 to 50

puts "List of numbers from 1 to 50 : "
for i in 1..50
    print "#{i} "
    if i%10==0
        puts
    end
end

# sum of 1 to 100

print "Sum of numbers from 1 to 100 : "

sum=0
for i in 1..100
    sum+=i 
end

puts sum