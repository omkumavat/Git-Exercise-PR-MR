class Logger
  def method_missing(method, *args)
    puts "Called method: #{method}"
  end
end

l = Logger.new
l.hello
l.anything
# l.method_missing


class Calculator
  def add(a, b)
     a + b
  end
end

calc = Calculator.new
puts calc.send(:add, 2, 3)
puts calc.add(2,3)

class String
  def shout
    self.upcase + "!"
  end

  def con(str2)
    self+str2
  end
  
end

puts "ruby".shout
puts "Om ".con("Kumavat")