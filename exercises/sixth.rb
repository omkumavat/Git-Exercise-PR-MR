module Sound
  def make_sound
    puts "Sound is playing"
  end
end

class Dog
  include Sound

  def speak
    puts "Dog is making sound"
    make_sound
  end
end

class Cat
  include Sound

  def speak
    puts "Cat is making sound"
    make_sound
  end
end

dog = Dog.new
dog.speak

cat = Cat.new
cat.speak
