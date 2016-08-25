#4.4 Schmuhl Solo Challenge

puts "How many employees will be processed?"
  number_employees = gets.chomp.to_i
   gets.chomp.to_i


def vampire_determination_interview(number_employees)
  i = number_employees
  until i == 0 do 

      puts "What is your name?"
        name = gets.chomp

      puts "How old are you?"
        age = gets.chomp.to_i

      puts "In what year were you born?"
        birth_year = gets.chomp.to_i

      puts "Would you like some garlic bread from our company cafeteria (yes/no)?"
        garlic_lover = gets.chomp

      puts "Would you like to enroll in the company's health insurance (yes/no)?"
        insurance = gets.chomp

#Allergy check

    puts "What are you allergic to? Please enter allergies one at a time, and type done when you're finished."
     allergies = gets.chomp.downcase
      until allergies == "done" || allergies == "sunshine"
        puts "Thank you! Please enter allergies one at a time, and type done when you're finished." 
        allergies = gets.chomp.downcase
      end

#Conditional check

      if  allergies == "sunshine"
        puts "Probably a vampire."
      elsif (2016 - birth_year = age) && (garlic_lover == "yes" || insurance == "yes")
        puts "Probably not a vampire."
      elsif (2016 - birth_year != age) && (garlic_lover == "no" || insurance == "no")
        puts "Probably a vampire."
      elsif (2016 - birth_year != age) && (garlic_lover == "no" && insurance == "no")
        puts "Almost certainly a vampire."
      elsif (name == "Drake Cula") || (name == "Tu Fang") == true
        puts "Definitely a vampire."
      else print "Results inconclusive."

      end
    
  i -= 1

  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end 

vampire_determination_interview(number_employees)






