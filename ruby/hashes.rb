#Interior D- Zign Program by SchmuhlFace

#Setup methods with questions to retrieve data and store in appropriate and varied values.
#Store client's responses and print hash.
#Ask user if they'd like to update any of their stored responses.
#Update stored responses to appropriate values.
#If the user doesn't want to update anything, exit program.
#Else if the user wants to update, ask them to input the key they want to update.
#Store the new updated value in the key; make sure to convert any updated values to the appropriate values.
#Print the updated hash and exit the program.

def name
  puts "What is your name?"
  name = gets.chomp
end

def age
  puts "What is your age?"
  age = gets.chomp.to_i
end

def kiddos
  puts "How many kids do you have?"
  kiddos = gets.chomp.to_i
end

def decor
  puts "What is your preferred decor theme?"
  decor = gets.chomp
end

def pets
  puts "Do you have any pets? Please type yes or no."
  pets = gets.chomp 
  if pets == "yes"
    true
  elsif 
    false
  end
end

def pattern
  puts "What is your client's favorite type of pattern?"
  pattern = gets.chomp
end

def updated(hash)
  puts "Thank you for your entires. Please review your client's work with them: #{hash}. Would you like to change anything? Please type 'none' if you're all set."
    input = gets.chomp
    if input != "none"
      puts "Please type the kind of info you'd like to edit: name, age, kiddos, decor, pets, or pattern."
        key_update = gets.chomp.to_sym
        # THIS LINE IS VERY IMPROTANT B/C IT CONNECTS THE KEYS TO THE INPUT!!
        puts "Please enter your change."

#I have to make sure I change the data type here // convert it to integers.
        if key_update == :age || key_update == :kiddos
          fresh_value = gets.chomp.to_i
        else
          fresh_value = gets.chomp

        #then i must put this new info into the hash. i do this by using the key in the brackets to reference the key that the new value will be set equal to ( this has been a point of confusion for me b/c these are array brackets but that's what we use (with the key inside) to reference a value of a hash! MIND BLOWN!)

        hash[key_update] = fresh_value
        end

      puts " We hope you enjoyed using Interior D-Zign!"
      return hash

    end

end



def client
    
    application = {
    
    name: "",
    age: "",
    kiddos: "",
    decor: "",
    pets: "",
    pattern: ""

   }

puts "Welcome to Interior D-Zign! Please enter your client's details."

    application[:name] = name
    application[:address] = age
    application[:kiddos] = kiddos
    application[:decor] = decor
    application[:pets] = pets
    application[:pattern] = pattern

    application = updated(application)
    
    puts "Please review your client's info with them: #{application}"
end
client

#The application isn't reprinting here. I'm curious about that! 


