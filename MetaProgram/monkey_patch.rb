
class Array
    def average
        sum=0
        self.each do |ele|
            sum+=ele
        end
        return sum
    end
end

arr=Array.new([1,2,3])

puts arr.average