#Interior DesignEZ Program

#Setup hash with keys and values
#Ask user/designer questions (client's name, age, number of children, decor theme, pattern, pets). 
#Store client's responses and print hash.
#Ask user if they'd like to update any of their stored responses.
#Update stored responses to appropriate values.
#If the user doesn't want to update anything, exit program.
#Else if the user wants to update, ask them to input the key they want to update.
#Store the new updated value in the key; make sure to convert any updated values to the appropriate values.
#Print the updated hash and exit the program.


client_form_info = {
  name:"",
  age:"",
  num_kids:"",
  decor_theme:"",
  pattern:"",
  pets:""
}
 
puts "Welcome to Interior DesignEZ! Please enter your client's details."


  puts "What is your client's first and last name?"
  name = gets.chomp
  client_form_info[:name] = name



  puts "How old is your client?"
  age = gets.chomp.to_i
  client_form_info[:age] = age



  puts "How many children does your client currently watch over?"
  num_kids = gets.chomp.to_i
  client_form_info[:num_kids] = num_kids


  puts "What is your client's favorite decor theme?"
  decor_theme = gets.chomp
  client_form_info[:decor_theme] = decor_theme


  puts "What is your client's favorite type of pattern?"
  pattern = gets.chomp
  client_form_info[:pattern] = pattern

  puts "Does your client have pets? (Yes or No)?"
  pets = gets.chomp
  if pets == "Yes"
    pets = true
  else
    pets = false
  end
    client_form_info[:pets] = pets
  


puts "Thank you for this information. Please review your client's entries with them."
puts client_form_info
puts "Would your client like to make any changes (yes or no)?"
    changes = gets.chomp
    if changes == "yes"
            puts "Which entry needs to be changed?"
            key_change = gets.chomp.to_sym
            puts "Please enter your client's new value."
            value_change = gets.chomp
            if key_change == :age
              value_change = value_change.to_i
            else key_change == :num_kids
              if value_change = "yes"
                value_change = true
              else value_change = false
            end
          end
          client_form_info[key_change] = value_change
          puts "Your changes have been saved. Please review them with your client."
          puts client_form_info
    else puts "Thank you for your information!"
    end
  puts "We hope you enjoyed using Interior DesignEZ. Ciao!"


