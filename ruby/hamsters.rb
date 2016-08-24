puts "What is your hamster's name?"
  hamster_name = gets.chomp

puts "What level of noise are you comfortable with between 1-10?"
  level_answer = gets.chomp.to_i

puts "What color of fur do you prefer?"
  fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption (yes/no)?"
  adoption_candidacy = gets.chomp

puts "What's the age of your hamster?"
  hamster_age = gets.chomp.to_i

if hamster_age == ""
  hamster_age = nil
  
else hamster_age

end

puts "Your hamster's age is #{hamster_age}."
puts "You're comfortable with a noise level of #{level_answer}."
puts "You prefer #{fur_color} fur."
puts "When asked if hamster is adoption ready, you said #{adoption_candidacy}."
puts "Your hamster's age is #{hamster_age}." 

level_answer.class.superclass
hamster_age.class.superclass



#to change a string to an integer, we used this after gets.chomp: .to_i