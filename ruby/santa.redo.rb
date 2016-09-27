# Add three attribute-changing methods to your Santa class:

# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.


# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.


class Santa

  attr_reader :ethnicity 
  attr_accessor :gender , :age

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

  def info
    puts "Santa is a #{@gender} who is #{@ethnicity} and #{@age} years old."
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer)
    puts "Hey #{bad_reindeer}! Bad, #{bad_reindeer}; you shouldn't have eaten my cookie! To the end of the line!"
    return @reindeer_ranking.push(bad_reindeer)
  end  


  
end

## TESTING CODE

# santa_bb = Santa.new("rainbow", "human" )

# p santa_bb.info
# p santa_bb.get_mad_at("Vixen")

# Hey Vixen! Bad, Vixen; you shouldn't have eaten my cookie! To the end of the line!
# ["Rudolph", "Dasher", "Dancer", "Prancer", "Comet", "Cupid", "Donner", "Blitzen", "Vixen"]
# => ["Rudolph", "Dasher", "Dancer", "Prancer", "Comet", "Cupid", "Donner", "Blitzen", "Vixen"]

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



#Interface

puts "Let's make some santas! Press *enter* when you are ready."
enter = gets.chomp 

#Collect and make satnas

santa_collect = []

while true 

10.times do |number|
santa_bb = Santa.new(random_gender, random_ethnicity)
santa_bb.age = rand(140)
puts "Santa ##{number+1}'s info: #{santa_bb.info}"
puts " *****************"
end

puts "Please press enter to make more santas. If you're tired, type *quit* to exit"
user_input = gets.chomp
if user_input == "quit"

  puts "Have a ball at SantaCon. Santa you later!"
  break
  end
end



