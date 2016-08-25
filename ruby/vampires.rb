puts "What is your name?"
  name = gets.chomp

puts "How old are you?"
  age = gets.to_i

puts "In what year were you born?"
  dob = gets.to_i

puts " Silly me, what's the current year?"
  current_year = gets.to_i

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

if age && (garlic_lover || insurance) == true
  puts "Probably not a vampire."
elsif age && (garlic_lover || insurance) == false
  puts "Probably a vampire."
elsif age && garlic_lover && insurance == false
  puts "Almost certainly a vampire.."
elsif (name == "Drake Cula") || (name == "Tu Fang") == true
  puts "Totally a vampire."

else print "Results inconclusive."

end





