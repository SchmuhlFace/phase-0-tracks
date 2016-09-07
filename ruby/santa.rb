##SantaCon Simulator

class SantaCon

  #Your class should have three instance methods:

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

# 

#DRIVER CODE

#putting multiple instances into an array
santas = []
santas << SantaCon.new("agender", "black")
santas << SantaCon.new("girlymon", "white")

#test
p santa=SantaCon.new("agender", "black")
p santa.speak
p santa.eat_milk_and_cookies("sugar cookie")

p santas
p santas.length





# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

#   def ranking
#    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#   end
  

#   def celebrate_birthday
#     @age += 1 
#   end

#   def get_mad_at(reindeer_name)
#     @reindeer_ranking.push(reindeer)
#     puts "You've been very naughty, #{reindeer_name}; there will be consequences!"
#   end

#   def age
#     @age
#   end

#   def enthinicty
#     @ethnicity
#   end
    
# end

# #setter method

#   def gender=(fresh_gender)
#     @gender = fresh_gender
#   end




