# Node class
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

# LinkedList class
class LinkedList
  def initialize
    @head = nil
  end

  def isEmpty
    @head.nil?
  end

  def insert(data)
    new_node = Node.new(data)

    if isEmpty
      @head = new_node
    else
      temp = @head
      while temp.next
        temp = temp.next
      end
      temp.next = new_node
    end

    puts "Element inserted successfully."
  end

  def delete
    if isEmpty
      puts "Linked List is empty."
    else
      removed = @head.data
      @head = @head.next
      puts "Removed element: #{removed}"
    end
  end

  def printList
    if isEmpty
      puts "Linked List is empty."
      return
    end

    puts "Linked List elements:"
    temp = @head
    while temp
      print "#{temp.data} -> "
      temp = temp.next
    end
    puts "nil"
  end
end

# ---------------- MAIN PROGRAM ----------------

puts "Linked List Exercise.."

ll = nil
choice = 0

begin
  puts "\n1. Initialize Linked List"
  puts "2. Print Linked List"
  puts "3. Insert element"
  puts "4. Delete element (from start)"
  puts "5. Exit"
  print "Enter your choice: "

  choice = gets.chomp.to_i

  case choice
  when 1
    ll = LinkedList.new
    puts "Linked List initialized successfully."
  when 2
    ll ? ll.printList : puts("Initialize Linked List first.")
  when 3
    if ll
      print "Enter element: "
      data = gets.chomp.to_i
      ll.insert(data)
    else
      puts "Initialize Linked List first."
    end
  when 4
    ll ? ll.delete : puts("Initialize Linked List first.")
  when 5
    puts "Exiting..."
  else
    puts "Invalid choice."
  end

end while choice != 5

ll = LinkedList.
