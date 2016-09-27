class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end


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
