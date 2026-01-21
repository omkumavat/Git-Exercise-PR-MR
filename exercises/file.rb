File.open("example.txt", "w") do |file|
  file.puts "Hello, Ruby!"
  file.puts "This is a text file."
end

File.open("example.txt", "a") do |file|
  file.puts "Appending a new line."
end

content = File.read("example.txt")
puts content

File.foreach("example.txt") do |line|
  puts line
end
