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


## Did the player win? Make a method

    def winner?
        if @real_word == @guess_word
          return true
        else
          return false
        end
    end

end

#method doesn't work b/c I need a boolean
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

puts "Thank you! Please let player 2 begin their turn!"

puts "Oh no! A killer bunny is now in possession of your word. Let's see if player 2 can save it! Player 2, the word you're guessing has #{killer_word.guess_word.length} letters, so you get #{killer_word.guess_turns - killer_word.guess_spaces} guesses. Use them wisely. You're trying to get the word back before the killer bunny eats it and removes it from our lexicon! Enter your guess now."


while killer_word.guess_spaces < killer_word.guess_turns do
  puts "Guess a letter of the secret word!"
  letter = gets.chomp
  
  if letter.length !=1
    puts "Please only enter one letter. Type again!"
   
  
  elsif killer_word.guessed_letter.include?(letter)
    puts "Hey! You've already guessed that letter. It won't count against you. Try again."

  elsif killer_word.include?(letter)
    puts "Nailed it!" 
    puts killer_word.guess_word
  
  break if killer_word.winner?
  end
end

if killer_word.winner? == true 
  puts "Congrats! You saved * #{secret_word} * from the killer bunny! It gets to stay in our lexicon!" 
elsif killer_word.winner? == false
  puts "The killer bunny ate the secret word, #{secret_word}, which you didn't guess! Sadly, we cannot use this word any more :( "
end

