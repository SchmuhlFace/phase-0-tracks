
#things i need for program:
#a way to check all letters against letters in the word
#a way to update a sort of hangman board that shows user when they've guessed a correct letter
# allow the the same number of guesses that are in a word
#if user guesses the same letter it should not count against them
#some kind of interface that denotes different users 


class Guesswrdz
  
  attr_accessor :secretword , :guessword
  # attr_reader 
  
  def initialize(secretword) 
    @secretword = secretword
    @guess_word = ""
    secret_word.length.times {@guess_word << "-"}
    @guess_array = []
    @guessed_letter = []
    @guesses_left = 1 * secretword.length
    @guesscount = 0 
  end 


#Check if the user's guess includes a letter from the secret ord

  def include?(letter)
    @guesscount +=1
    guessed_letter << letter
    if @secretword.include?(letter)
      letter_index = 0
      @secretword.each_char do |l|
        @guessword[letter_index] = 1 if 
        l == letter
        letter_index += 1
      end
      return true
    else
      return false
    end
  end

#Has the player guessed the word?

  def win?
    if @secretword == @guessword
      return true
    else
      return false
    end
  end

end

        


# game = Guesswrdz.new("hey")


# interface

puts "Welcome to the Guesswrdz"