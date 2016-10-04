
# I am trying to push this to GH again; failed last time

#things i need for program:
#a way to check all letters against letters in the word
#a way to update a sort of hangman board that shows user when they've guessed a correct letter
# allow the the same number of guesses that are in a word
#if user guesses the same letter it should not count against them
#some kind of interface that denotes different users 


#Pseudocode on scratch pad.

class Guesswrdz
  
  attr_accessor :guessing_word , :guess_array
  
  def initialize(guessing_word) 
    @guessing_word = guessing_word
    @guess_array = []
  end 


#Check if the user's guess includes a letter from the secret word

  def guess_container(guess)
    @guess_array.push(guess)
  end

#print the current state of the game / guessed letters of the secret wrod

  def current_status
    result = ""

    @guessing_word.split("").each { |letter|
      if @guess_array.include?(letter)
        result << letter
       else
        result << "_ "
      end
    }
    
    return result
  end

  #two methods: one for winning and one for losing

  def won
    status = self.current_status
    hasUnderscore = status.include?("_")
    return !hasUnderscore
  end
  
  def lost
    return @guess_array.length >= @guessing_word.length
  end

end


# interface

puts "Welcome to **** GuessWrdz ****. Player one, please enter a word, then hand over your device to player 2."

#instantiate / create a new instance fo the class

  secret_word = gets.chomp
  game = Guesswrdz.new(secret_word)

#conditional

until game.won || game.lost
  puts "Player 2, please begin guessing the word!"
  
  current_guess = gets.chomp[0]
  game.guess_container(current_guess)
  puts game.current_status
end

#conditional

if game.won
  puts "CONGRATS! You won!"
else 
  puts ":( You lost the game! Unfortunately, you didn't get guess the secret word, which was ***#{secret_word}***. Try again another time!"
end

