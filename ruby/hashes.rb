#Interior DesignEZ Program by SchmuhlFace

#Setup methods with questions to retrieve data and store in appropriate and varied values.
#Store client's responses and print hash.
#Ask user if they'd like to update any of their stored responses.
#Update stored responses to appropriate values.
#If the user doesn't want to update anything, exit program.
#Else if the user wants to update, ask them to input the key they want to update.
#Store the new updated value in the key; make sure to convert any updated values to the appropriate values.
#Print the updated hash and exit the program.


def name
  puts "What is your client's first and last name?"
  name = gets.chomp
end


def age
  puts "How old is your client?"
  age = gets.chomp.to_i
end

def kids
  puts "How many kids does your client currently watch over?"
  num_kids = gets.chomp.to_i
end

def decor
  puts "What is your client's favorite decor theme?"
  decor_theme = gets.chomp
end

def pattern
  puts "What is your client's favorite type of pattern?"
  pattern = gets.chomp
end

def pets
  puts "Does your client have pets? (Yes or No)?"
  pets = gets.chomp
  if pets == "Yes"
    pets = true
  else
    pets = false
  end
 end 

def updated(hash)
  puts "Thank you for this information. Please review your client's entries with them: #{hash}. Would you like to change anything? Please type 'none' if you're all set."
  input = gets.chomp
  if input != "none"
    puts "Please state which piece of information you'd like to update: name, age, kids, decor, pattern, pets."
    key_update = gets.chomp.to_sym
    puts "Please enter your change."

      if key_update == :age || key_update == :kids
        fresh_key = gets.chomp.to_i
      else
        fresh_key = gets.chomp
      end

      hash[key_update] = fresh_key

    end

    puts "We hope you enjoyed using Interior DesignEZ. Ciao Bella!"
    return hash
end

def client
  client_form_info = {
    name:"",
    age:'',
    kids:'',
    decor:"",
    pattern:"",
    pets:""
  }
 
      puts "Welcome to Interior DesignEZ! Please enter your client's details."

      client_form_info[:name] = name
      client_form_info[:age] = age
      client_form_info[:kids] = kids
      client_form_info[:decor] = decor
      client_form_info[:pattern] = pattern
      client_form_info[:pets] = pets

      client_form_info = updated(client_form_info)

      puts "Please review you client's information: #{client_form_info}"
end
client
