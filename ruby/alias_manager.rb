#Spy Name Generator#
#By SchmuhlFace


#Get user input of first and last name
#Store user input
#Swap first and last name of user
#Change any vowel in users name to the next vowel that occurs in 'aieou' and all other letters (consonants) to the next consonant in the alphabet

#Breaking this down into manageable pieces:
#When will it be helpful to convert the string to an array to work with it more easily?
#How will you figure out whether a letter is a vowel?
#How will you deal with the fact that some letters are uppercase?
#How will you handle edge cases?


##Make the switch
<<<<<<< HEAD
#reverse first and last names
#rejoin

=======
>>>>>>> 52e4fe3d8cac3a3d3024fe89c6e5e40e1a4d66cc
def name_switch (origional_name)
  name_switched = origional_name.split('').reverse.join('')
  name_switched
end

##TESTING:
#p name_switch ('james madison')
#=> "nosidam semaj"


def vowel_changer(origional_name)
  origional_name_array = origional_name.downcase.chars
  vowels = %w{a e i o u}
  origional_name_array.map! do |char|
    if char == "u"
        char = "a"
    elsif vowels.include?(char)
      change_vowel_index = vowels.index(char) + 1
      vowel_changed = vowels[change_vowel_index]
    else
      char
    end
  end
  origional_name_array.join('')

end

#p vowel_changer ("hey")
# => "hiy"

<<<<<<< HEAD
=======

>>>>>>> 52e4fe3d8cac3a3d3024fe89c6e5e40e1a4d66cc
def consonant_changer(origional_name)
  origional_name_array = origional_name.downcase.chars
  consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
  origional_name_array.map! do |char|
    if char == "z"
        char = "b"
    elsif consonants.include?(char)
      changed_consonants_index = consonants.index(char) +1
      changed_consonants = consonants[changed_consonants_index]
    else
      char
    end
end
origional_name_array.join('').split(" ").each{|letter| letter.capitalize!}.join(" ")
end
# p consonant_changer("Lizzy James")
# => "Mibbz Kanet"

<<<<<<< HEAD
#driver code 

  interface_container = {}
  
  
  puts "Thank you for using the Spy Name Generator. Please enter your full name (first and last) or type 'quit' to exit the program."
  name_before_alias = gets.chomp
  while name_before_alias != "quit" 
=======

def interface
  interface_container = {}
  puts "Thank you for using the Spy Name Generator. Please enter your full name (first and last) or type 'quit' to exit the program."
  name_before_alias = gets.chomp
  while name_before_alias != "quit"
>>>>>>> 52e4fe3d8cac3a3d3024fe89c6e5e40e1a4d66cc
    name_switched = name_switch(name_before_alias)
    vowels_altered = vowel_changer(name_switched)
    new_alias = consonant_changer(vowels_altered)
    interface_container[name_before_alias] = new_alias
<<<<<<< HEAD
    if name_before_alias = "quit"
    puts interface_container.each_pair{|input,output| puts "Please start getting used to your new name, #{input}, which is #{output}."}
    else 
  end
  end


#my branch is being weird. i'm trying to push this again.
=======
    name_before_alias = gets.chomp
    if name_before_alias = "quit"
    end
    puts interface_container.each_pair{|input,output| puts "Please start getting used to your new name, #{input}, which is #{output}."}
  end
end

interface


##TESTING
 #lizzy james
 
# Please start getting used to your new name, lizzy james, which is Tinek Zbbom.
# {"lizzy james"=>"Tinek Zbbom"}

##PLEASE SEE ALL RESEARCH BELOW!
 +
 +#2 Second try w/ robot video
 +
 +# def spy_char(char)
 +#   name_swap = entered_name.swap!
 +# end
 +
 +# def spy_name("entered_name")
 +#   name_index = 0
 +#   name_response = ""
 +#   while name_index < entered_name.length
 +#     name_response << spy_char(entered_name[name_index])
 +#     name_index += 1
 +#   end
 +#   name_response
 +# end
 +
 +# p spy_name("Lizzy Schmuhl")
 +
 +
 +##Research
 +
 +# letters = "hello world".split('')
 +# => ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
 +
 +# letters.map! { |letter| letter.next }
 +# => ["i", "f", "m", "m", "p", "!", "x", "p", "s", "m", "e"]
 +
 +# letters.class
 +# => Array
 +
 +# new_string = letters.join('')
 +# "ifmmp!xpsme"
 +
 +# "hello world".split(' ')
 +# => ["hello", "world"]
 +
 # +words = %w[first second third fourth fifth sixth]
 # +str = ""
 # +words.reverse_each { |word| str += "#{word} " }
 # +p str #=> "sixth fifth fourth third second first "
 # +
 +
 +#1st try
 +# begin
 +#   puts "Please enter your full name."
 +#   full_name = gets.chomp.downcase
 +#   letters = full_name.split('')
 +# end
 +
 +
 +
 +#     loop do
 +#     puts "Enter your name again, or type 'quit' to exit."
 +#     full_name_new = gets.chomp.downcase
 +#     new_name = full_name.split
 +#     if full_name_new == "quit"
 +#       break
 +#     end
            
 # -  end      +#   end 
 # -  puts "Thank you for using the Spy Name Generator!"     +#   puts "Thank you for using the Spy Name Generator, #{new_name}!"
 # -end      +# end 
 # +
 +
 +# array_alias_name = new_name[0]
 +# new_name[0] = new_name [1]
 +# new_name[1] = a
 +
 +##Vowel changer-  using method
 +
 +# def next_vowel(word)
 +#     if word =='a'
 +#       'e'
 +#     elsif word =='e'
 +#       'i'
 +#     elsif word =='i'
 +#       'o'
 +#     elsif wrod =='o'
 +#       'u'
 +#     elsif word =='u'
 +#       'a'
 +#     else
 +#     word
 +#   end
 +# end
 +
 +
 +
 +
 +# ##Make the switch
 +
 +# def name_switch (origional_name)
 +#   name_switched = origional_name.split('').reverse.join('')
 +#   name_switched
 +# end



>>>>>>> 52e4fe3d8cac3a3d3024fe89c6e5e40e1a4d66cc
