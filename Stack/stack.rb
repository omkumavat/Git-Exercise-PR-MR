class Stack
  def initialize
    puts "Enter max capacity of Stack:"
    @n = gets.chomp.to_i
    @num = []
  end

  def isStackFull
    @num.size == @n
  end

  def isStackEmpty
    @num.empty?
  end

  def inStack(ele)
    if isStackFull
      puts "Stack is full."
    else
      @num << ele
      puts "Element added."
    end
  end

  def outStack
    if isStackEmpty
      puts "Stack is empty."
    else
      puts "Removed: #{@num.pop}"
    end
  end

  def printStack
    puts "Stack elements:"
    if isStackEmpty
      puts "Stack is empty."
    else
      @num.each { |e| puts e }
    end
  end
end

puts "Stack exercise.."
q = nil
choice = 0

begin
  puts "\n1. Initialize new Stack"
  puts "2. Print Stack"
  puts "3. Add element to Stack"
  puts "4. Remove element from Stack"
  puts "5. Exit"
  print "Enter your choice: "

  choice = gets.chomp.to_i

  case choice
  when 1
    q = Stack.new
    puts "Stack initialized successfully"
  when 2
    q&.printStack || puts("Initialize stack first")
  when 3
    if q
      print "Enter element: "
      ele = gets.chomp.to_i
      q.inStack(ele)
    else
      puts "Initialize stack first"
    end
  when 4
    q ? q.outStack : puts("Initialize stack first")
  when 5
    puts "Exiting..."
  else
    puts "Invalid choice"
  end

end while choice != 5
