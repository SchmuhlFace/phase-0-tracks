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

def name_switch (origional_name)
  name_switched = origional_name.split('').reverse.join('')
  name_switched
end

##TESTING:
#p name_switch ('james madison')
#=> "nosidam semaj"