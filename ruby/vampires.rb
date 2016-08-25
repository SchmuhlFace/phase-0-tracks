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
        dob = gets.chomp.to_i

      puts " Silly me, what's the current year?"
        current_year = gets.chomp.to_i

        if current_year - dob == age
            age = true
        else age = false

        end

      puts "Would you like some garlic bread from our company cafeteria (yes/no)?"
        garlic_bread = gets.chomp

        if garlic_bread == "yes"
          garlic_lover =true
        else garlic_bread == "no"
          garlic_lover = false
        end

      puts "Would you like to enroll in the company's health insurance (yes/no)?"
        insurance = gets.chomp

        if insurance == "yes"
          life_help = true
        else insurance = false
          life_help = false
        end

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
      elsif age && (garlic_lover || insurance) == true
        puts "Probably not a vampire."
      elsif age && (garlic_lover || insurance) == false
        puts "Probably a vampire."
      elsif age && garlic_lover && insurance == false
        puts "Almost certainly a vampire.."
      elsif (name == "Drake Cula") || (name == "Tu Fang") == true
        puts "Totally a vampire."

      else print "Results inconclusive."

      end
    
  i -= 1

  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end 

vampire_determination_interview(number_employees)






