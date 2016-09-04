#Spy Name Generator

#Get user input of first and last name
#Store user input
#Swap first and last name of user
#Change any vowel in users name to the next vowel that occurs in 'aieou' and all other letters (consonants) to the next consonant in the alphabet

#Breaking this down into manageable pieces:
#When will it be helpful to convert the string to an array to work with it more easily?
#How will you figure out whether a letter is a vowel?
#How will you deal with the fact that some letters are uppercase?
#How will you handle edge cases?

#Release 1 (before 0 for my brain)

begin
  puts "Please enter your fullname."
  full_name = gets.chomp.downcase
    loop do
    puts "Enter your name again, or type 'quit' to exit."
    full_name_new = gets.chomp.downcase
    if full_name_new == "quit"
      break
    end
  
  end 
  puts "Thank you for using the Spy Name Generator!"
end 