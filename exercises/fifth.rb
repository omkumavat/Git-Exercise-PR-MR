arr=["Mango","Orange","Apple","Watermelon","Cherry","Banana"]
puts arr



hash = Hash.new
hash["Mango"]=0
# hash["Mango"]+=1
hash["Apple"]=5
hash["Orange"]=8
hash["Cherry"]=10
puts hash

if hash.key?("Mango") and hash["Mango"]>=1
    puts "Mango is present"
    puts "#{hash["Mango"]} Mangoes are present"
else
    puts "Mango are not present"
end