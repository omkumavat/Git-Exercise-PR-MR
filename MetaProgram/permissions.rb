PERMISSIONS = [:read, :write, :delete]
class Student
  attr_accessor :name, :id, :email

  def initialize(name,id,email,permissions)
    @name=name
    @id=id
    @email=email
    @permissions = permissions
  end

  PERMISSIONS.each do |perm|
    # define_method("allow_#{perm}") do
    #     if !@permissions.include?(perm)
    #         @permissions << perm 
    #     else
    #         puts "Already allowed !"
    #     end
    # end

    # define_method("deny_#{perm}") do
    #     if @permissions.include?(perm)
    #         @permissions.delete(perm) 
    #     else 
    #         puts "Already denied !" 
    #     end
    # end 

    define_method("can_#{perm}") do
      @permissions.include?(perm)
    end
  end
end

p1 = Student.new("Om","om1","omk@gmail.com",[:read,:delete])
p2 = Student.new("Yash","y1","yash@gmail.com",[:write,:read])
p3=Student.new("Raj","r1","raj@gmail.com",[:write])


def print_student(stud)
    stud.each_with_index do |st,i|
        puts "Student #{i+1} : #{st.name}, #{st.id}, #{st.email}"
    end
    puts
end

arr=[]
arr.push(p1)
arr.push(p2)
arr.push(p3)

def find_by_id(id,arr)
    arr.each do |st|
        if st.id==id
            return st
        end
    end
end


print_student(arr)

# num
begin
    # puts "1. Allow Read"
    # puts "2. Allow Write"
    # puts "3. Allow Delete"
    # puts 
    # puts "4. Deny Read"
    # puts "5  Deny Write"
    # puts "6. Deny Delete"
    # puts 
    puts "1. Check Access"
    puts "2. Exit"

    print "Enter your choice : "
    num=gets.chomp.to_i

    if num==1
        print "Enter student id : "
        id=gets.chomp
        puts "1. Read access"
        puts "2. Write access"
        puts "3. Delete access"
        print "Enter your choice : "
        check=PERMISSIONS[gets.chomp.to_i-1]
        stud_obj = find_by_id(id,arr)
        if check==:read
            if stud_obj.can_read 
                puts "Read is allowed"
            else 
                puts "Read is denied"
            end
        elsif check==:write
            if stud_obj.can_write 
                puts "Write is allowed"
            else 
                puts "Write is denied"
            end
        else
            if stud_obj.can_delete 
                puts "Delete is allowed"
            else 
                puts "Delete is denied"
            end
        end
        # p.allow_read
    # elsif num==2
    #     p.allow_write
    # elsif num==3
    #     p.allow_delete
    # elsif num==4
    #     p.deny_read
    # elsif num==5
    #     p.deny_write
    # elsif num==6
    #     p.deny_delete
    # elsif num==7
    #     puts
    #     if p.can_read 
    #         puts "Read is Allowed"
    #     else 
    #         puts "Read is Denied"
    #     end
    #     if p.can_write
    #         puts "Write is Allowed"
    #     else 
    #         puts "Write is Denied"
    #     end
    #     if p.can_delete
    #         puts "Delete is Allowed"
    #     else 
    #         puts "Delete is Denied"
    #     end
    #     puts
    elsif num==2
        puts "Exiting"
        # break
    else
        puts "Invalid Choice"
    end
end while num!=8
