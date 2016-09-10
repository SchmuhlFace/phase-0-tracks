##PSUEDOCODE
# Killer Bunny Game should...

# One user can enter a word and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# If the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

##Rubric

# Program is logically sectioned into class declaration and driver code
# Tests cover described features
# One player can enter a word before the other player takes over
# Guesses are limited and feedback on each guess is provided
# Repeated guesses do not count against the player
# A parting message reflects whether the game was won or lost



class KillerBunny


  ##Accessible outside of class
  attr_accessor :secret_word , :guess_correct , :guess_wrong

  def initialize(secret_word)
    @secret_word = secret_word
    @guess_correct = []
    @guess_wrong = []
    @board = ""
  end

#This is an array
    def guess(guess_word)
      @guess 
    end

#This is where correct letters go
  def guess_display(secret_word)
    board = "-" * secret_word.length.to_i
    p board
  end

##This is an integer
    def guesses_allowed_count(secret_word) 
        guesses_allowed = secret_word.length.to_i
          while guesses_allowed < secret_word.length.to_i do

            guesses_allowed = secret_word.length.to_i - 1
          puts "You have (#{guesses_allowed} - 1) remaining to guess Player 1's word. Try again!"
           

#####




def guess_check(guesses_allowed)
      guesses_allowed = 0
      guesses_counter = 0

    
    if @secret_word[index] == @secret_word.length
      @is_over = true
    else
      false
    end
  end
end


while !game.is_over
  puts "Please guess another letter"
  guess = gets.chomp.chars
  if guess.chars = secret_word[""]
    puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"

  ## Getter classes accessible outside of class

  # def store_secret
  #   @secret_word
  # end 

  # def guess_correct
  #   @guess_correct
  # end

  # def guess_wrong
  #   guess_wrong
  # end
    
  end

end

# DRIVER CODE

#instantiate
puts "Welcome to the Killer Bunny Word Guessing Game (for 2 players!)." 
secret_word = KillerBunny.new(secret_word)

#Interface
puts "Player 1, please enter a secret word."
  secret_word = gets.chomp.chars

puts "Thank you! A killer bunny is now in possession of your word. Please allow player 2 to use the screen."

puts "Player 2, please begin guessing the word in order to get it back before the killer bunny 
eats it and removes it from our lexicon!"

guess_word = gets.chomp.chars



