# Add three attribute-changing methods to your Santa class:

# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.


# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.


class Santa

  attr_reader :age , :ethnicity
  attr_accessor :gender

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
  
end

santas = []

example_genders = ["butterfly", "female", "bigender", "male", "female", "gender fluid", "rainbow"]

example_ethnicities = ["black", "latina", "white", "japanese", "human", "unicorn", "wizard"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#this prints the array of santas, where we are storing all of them! 

p santas










#Why isn't Vixen leaving? Vixen goes to the end but stays in place too! WHHHHHYYYY

#   def get_mad_at(bad_reindeer)
#     @reindeer_ranking.push(bad_reindeer)
#       puts "Hey #{bad_reindeer}! Bad, #{bad_reindeer}; you shouldn't have eaten my cookie! To the end of the line!"
#       p @reindeer_ranking
#   end  

#     def info
#     puts "Santa is a #{@gender} who is #{@ethnicity} and #{@age} years old. This santa's reindeer lineup post cookie incident: #{@reindeer_ranking}"
#   end
# end

# driver code

# def random_gender
# example_genders = ["butterfly", "female", "bigender", "male", "female", "gender fluid", "rainbow"]
# random_gender = [rand(example_genders)]
# santa_collect << random_gender
# end

# def random_ethnicity
#   example_ethnicities = ["black", "latina", "white", "japanese", "human", "unicorn", "wizard"]
#   random_ethnicity = [rand(example_ethnicities)]
#   santa_collect << random_ethnicity
# end



# santa_collect = []

#   10.times do |number|
#   bb_santa = Santa.new(random_gender, random_ethnicity)
#   bb_santa.age = rand(140)
#   bb_santa.random_gender
#   bb_santa.random_ethnicity





# # p bb_santa.speak
# # p bb_santa.eat_milk_and_cookies("snickerdoodle")

# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)


# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.






# Initializing Santa instance...
# Ho, ho, ho! Haaaappy holidays!
# nil
# That was a good snickerdoodle cookie.
# nil
# => nil
