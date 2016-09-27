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
    # @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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

  def info
    puts "Santa is a #{@gender} who is #{@ethnicity} and #{@age} years old."
  end

  # I am commenting the get_mad_at method for debugging ease (same below)


  # def get_mad_at(bad_reindeer)
  #@reindeer_ranking.push(bad_reindeer)
  #  puts "Hey #{bad_reindeer}! Bad, #{bad_reindeer}; you shouldn't have eaten my cookie! To the end of the line!"
  #  p @reindeer_ranking
  #end  

  
end

### DRIVER CODE

# randomly select gender and ethnicity for a santa

def random_gender
random_gender_array = ["butterfly", "female", "bigender", "male", "female", "gender fluid", "rainbow"]
gender = random_gender_array[rand(random_gender_array.length)]
end

def random_ethnicity
random_ethnicity_array = ["black", "latina", "white", "japanese", "human", "unicorn", "wizard"]
ethnicity = random_ethnicity_array[rand(random_ethnicity_array.length)]
end

santa_collect = []

santa_collect << Santa.new(random_gender, random_ethnicity )
santa_collect << Santa.new(random_gender, random_ethnicity )

p santa_collect


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
