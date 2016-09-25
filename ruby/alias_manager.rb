#Spy Name Generator#


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
#reverse first and last names
#rejoin

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