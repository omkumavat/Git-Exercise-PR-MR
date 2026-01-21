# handle invalid input


class InvalidAge < StandardError
end


$num
begin
    print "Enter your age : "
    $num=gets.chomp.to_i
    
    if $num<0 or $num>100
        raise InvalidAge, "Age is invalid"
    end

    puts "Age is correct"
rescue InvalidAge => e
    puts e.message
ensure
    puts "Finally block executes"
end