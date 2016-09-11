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

#Accessible outside of class
  attr_accessor :real_word , :guess_turns , :guess_spaces , :guess_word , :guessed_letter

      def initialize(secret_word)
        @real_word = secret_word
        @guess_turns = 1 * secret_word.length
        @guess_spaces = 0
        @guess_word = ""
        secret_word.length.times { @guess_word << "-"}
        @guessed_letter = ""
      end


    def include?(letter)
      @guess_spaces +=1
      guessed_letter << letter
      if @real_word.include?(letter)
        letter_index = 0
        @real_word.each_char do |l|
          @guess_word[letter_index] = l if 
          l == letter
          letter_index += 1
        end
        return true
      else
        return false
      end
    end


## Did the player win?

    def winner?
        if @real_word == @guess_word
          return true
        else
          return false
        end
    end

end

# def winner?
#   if secret_word == guess_word
#     puts "Congrats, WINNER!"
#   elsif 
#     puts "We hate to tell you, but you lost! Try again."
#   end
# end


# DRIVER CODE

puts "Welcome to the Killer Bunny Word Guessing Game (for 2 players!). Player 1, please enter a word!"

#instantiate
secret_word = gets.chomp.strip
killer_word = KillerBunny.new(secret_word)

puts "Thank you! A killer bunny is now in possession of your word. Please allow player 2 to begin playing.Player 2, the word you're guessing has #{killer_word.guess_word.length} letters. Please begin guessing the word in order to get it back before the killer bunny eats it and removes it from our lexicon! Enter your guess now."


while killer_word.guess_spaces < killer_word.guess_turns
  puts "Guess a letter of the secret word!"
  letter = gets.chomp
  if letter.length !=1
    puts "Please only enter one letter. Type again!"
    next
  end
  
  if killer_word.guessed_letter.include?(letter)
    puts "You have entered that letter before. Don't worry; it won't count against you. Try again."
    next
  end  

  puts killer_word.include?(letter) ? "Nice job" : "Maybe next time. :("
  puts killer_word.guess_word
  
  break if killer_word.winner?
  puts "You have #{killer_word.guess_turns - killer_word.guess_spaces} remaining. Use them wisely!"
  end

puts killer_word.winner? ? "You are the master of the word game!" : "Oh noooooooo!!! Yep, you lost!"

############&$^$$^$$$^


#   #Accessible outside of class
#   attr_accessor :secret_word , :guess_word

#   def initialize(secret_word)
#     @secret_word = secret_word
#     @guess_turns = secret_word.length.to_i
#     @guess_word = ""
#     secret_word.length.times {@guess_word << "-"}
#     @guess_spaces = 0
#     @guessed_letters = ""
#     @is_over = false
#   end


# # Compare player 2's guesses with the secret word. 
# # When player 2 makes a guess, we want to compare that guess ( each letter) with the secret word)
# #If any letters are the same, we want to print that letter in the blank space of the board (maybe
# #I convert that board to an array?).
# #if the

# ## second try with comparing indexes
# def compare?(letter)
#   @guess_spaces +=1
#   guessed_letters << letter
#   if @secret_word.include?(letter)
#     letters_index = 0
#     @secret_word.each_letter do |l|
#       @guessed_word[letters_index] l if 
#       l == letter
#       letter_index += 1
#     end
#     return true
#   else
#     return false
#   end
# end


# ## Did the player win?


# ## Test this code too
# # while !game.is_over
# #   puts "Please guess another letter"
# #   guess = gets.chomp.chars
# #   if guess.chars = secret_word[""]
# #     puts "Nope! Try again."
# #   end
# # end



        
# # ## first try comparing arrays
# #   secret_word
# #   guess_word
# #   intersection (secret_word & guess_word)
# #   letters = intersection.length
# #   puts "There are #{{letters} in common in both arrays. The letters are #{intersection}."
# # end


#   #Update the guess_spaces with correct letters that are guessed ( Giving me the most trouble!)


# ##I am making a guess counter here to track guesses made
#     def guesses_allowed_count(secret_word) 
#           until guesses_allowed == secret_word.length.to_i 
#             puts "You have (#{guesses_allowed} - 1) remaining to guess Player 1's word. Try again!"
#           elsif  guesses_allowed = secret_word
#             puts "Congrats! You guessed the word! You are THE WINNER!"
#           elsif guesses_allowed =
#             break
#           end
#     end
  
        
      

# # def print(current_guess_state)
# #   puts "---------------------------------------------"
# #   current_guess_state.each do |letter|
# #     puts "#{some_variable}"
# #   end
# #   puts "---------------------------------------------"
# # end

# #####


#   ## Getter classes accessible outside of class

#   # def store_secret
#   #   @secret_word
#   # end 

#   # def guess_correct
#   #   @guess_correct
#   # end

#   # def guess_wrong
#   #   guess_wrong
#   # end
    
#   end

# end

# # DRIVER CODE

# puts "Welcome to the Killer Bunny Word Guessing Game (for 2 players!)." 

# #instantiate
# secret_word = KillerBunny.new(secret_word)


# # #This is how I first tried to make a hangman blank space, but then i had trouble applying it.
# #   def guess_spaces(secret_word)
# #     @board = "-" * secret_word.length.to_i
# #   end
