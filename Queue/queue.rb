class Queue
  def initialize
    puts "Enter max capacity of Queue:"
    @n = gets.chomp.to_i
    @num = []
  end

  def isQueueFull
    @num.size == @n
  end

  def isQueueEmpty
    @num.empty?
  end

  def enqueue(ele)
    if isQueueFull
      puts "Queue is full."
    else
      @num << ele
      puts "Element added."
    end
  end

  def dequeue
    if isQueueEmpty
      puts "Queue is empty."
    else
      puts "Removed: #{@num.shift}"
    end
  end

  def printQueue ## print_queue
    puts "Queue elements:"
    if isQueueEmpty
      puts "Queue is empty."
    else
      @num.each { |e| puts e }
    end
  end
end

puts "Queue exercise.."
q = nil
choice = 0

begin
  puts "\n1. Initialize new Queue"
  puts "2. Print Queue"
  puts "3. Add element to Queue"
  puts "4. Remove element from Queue"
  puts "5. Exit"
  print "Enter your choice: "

  choice = gets.chomp.to_i

  case choice
  when 1
    q = Queue.new
    puts "Queue initialized successfully"
  when 2
    q&.printQueue || puts("Initialize queue first")
  when 3
    if q
      print "Enter element: "
      ele = gets.chomp.to_i
      q.enqueue(ele)
    else
      puts "Initialize queue first"
    end
  when 4
    q ? q.dequeue : puts("Initialize queue first")
  when 5
    puts "Exiting..."
  else
    puts "Invalid choice"
  end

end while choice != 5
