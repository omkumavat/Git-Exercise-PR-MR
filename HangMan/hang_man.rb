# WORD LIST (6-letter words)
WORDS = [
  "BETTER","LITTLE","PEOPLE","BUTTER","COFFEE","LETTER","BEAUTY","RANDOM",
  "FUTURE","SIMPLE","GOLDEN","SILVER","BRIGHT","FOREST","WINDOW","PLANET",
  "SMOOTH","CHANGE","FRIEND","CREATE"
]

word = WORDS.sample
letters = ('A'..'Z').to_a
guessed_letters = []
wrong_attempts = 0
max_attempts = 5

# initial hidden word
display_word = "_" * word.length

def print_alphabets(letters, guessed)
  letters.each_slice(6) do |group|
    group.each do |ch|
      if guessed.include?(ch)
        print "  "   # underline effect (removed)
      else
        print "#{ch} "
      end
    end
    puts
  end
end

puts "\n WELCOME TO HANGMAN"

while wrong_attempts < max_attempts && display_word.include?("_")
  puts "\nWord: #{display_word.chars.join(' ')}"
  puts "Wrong Attempts: #{wrong_attempts}/#{max_attempts}\n"

  print_alphabets(letters, guessed_letters)

  if display_word.include?("_")
    puts "Word is forming..."
  else
    puts "Word completed!"
  end

  print "\nEnter a letter: "
  guess = gets.chomp.upcase

  # validations
  if guess.length != 1 || !letters.include?(guess)
    puts "Invalid input"
    next
  end

  if guessed_letters.include?(guess)
    puts "Already guessed"
    next
  end

  guessed_letters << guess

  if word.include?(guess)
    word.chars.each_with_index do |ch, i|
      display_word[i] = ch if ch == guess
    end
    puts "Correct!"
  else
    wrong_attempts += 1
    puts "Wrong!"
  end
end



# GAME RESULT
puts "\n====================="
if display_word == word
  puts "YOU WON!"
else
  puts "YOU LOST!"
end

puts "Word was: #{word}"
puts "====================="
