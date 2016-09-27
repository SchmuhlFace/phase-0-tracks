# Add three attribute-changing methods to your Santa class:

# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.


# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.


class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end

  def celebrate_birthday
    @age +=1
  end
  
#Why isn't Vixen leaving? Vixen goes to the end but stays in place too! WHHHHHYYYY

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.push(bad_reindeer)
      puts "Hey #{bad_reindeer}! Bad, #{bad_reindeer}; you shouldn't have eaten my cookie! To the end of the line!"
      p @reindeer_ranking
  end
  
end

# driver code

bb_santa = Santa.new("butterfly", "black")
bb_santa.get_mad_at("Vixen")

# end




# # p bb_santa.speak
# # p bb_santa.eat_milk_and_cookies("snickerdoodle")


# santas = []

# example_genders = ["butterfly", "female", "bigender", "male", "female", "gender fluid", "rainbow"]
# example_ethnicities = ["black", "latina", "white", "japanese", "human", "unicorn", "wizard"]


# example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas





end

# driver code

# bb_santa = Santa.new

# p bb_santa.speak
# p bb_santa.eat_milk_and_cookies("snickerdoodle")


santas = []

example_genders = ["butterfly", "female", "bigender", "male", "female", "gender fluid", "rainbow"]
example_ethnicities = ["black", "latina", "white", "japanese", "human", "unicorn", "wizard"]


example_genders.length.times do |i|
santas << Santa.new(example_genders[i], example_ethnicities[i])
end





# Initializing Santa instance...
# Ho, ho, ho! Haaaappy holidays!
# nil
# That was a good snickerdoodle cookie.
# nil
# => nil
