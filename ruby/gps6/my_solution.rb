# Virus Predictor

# I worked on this challenge [by myself, with: Jessie_yang0302].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require data from file state_data so that we can use data from that file in this file. 
# 
require_relative 'state_data'

class VirusPredictor
# each time we create a new instance of the class, initializae will run, it takes state_of_origin, population_density, population
# three parameters, it returns these three parameters. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# inside method virus_effects, there are two method: predicted_deaths and speed_of_spead, it returns results from
# the two methods inside it. 
  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private
# it takes population_density, population, state parameters, and it calculates the number_of_deaths depending on the 
#ppopulation_density, it prints out the number of deaths of a state at the end. 
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# it takes population_density, state as parameter, it calculates the speed of spread based on population_density
# and it prints otu the speed at the end. 
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
 

STATE_DATA.each do |state, state_info|
        my_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
        my_state.virus_effects
      end 

#=======================================================================

# REFLECTION

# What are the differences between the two different hash syntaxes shown in the state_data file?

# There is syntactic sugar (that people confuse with symbols because of the colon) and then there is the hash rocket). They can be written either way based on our refactoring during out GPS

# What does require_relative do? How is it different from require?

#require relative requires the file that is relative to the program and uses inside of its class / methods/ etc. Relative is an already built file ( usually from someone else) such as Math, which we discussed in our GPS.

# What are some ways to iterate through a hash?

#You can iterate through a hash by calling .each on every item. You can also do a loop / do , or a conditional loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# We can remove the @state attribute because it's already the key of the large hashy hash. It's accessible whenever, and we don't have to call it here, especially because we're working inside of the the larger hash. The calculation doesn't use it, so it doesn't even effect the result. Therefore, we can leave it out!

# What concept did you most solidify in this challenge?

#The idea of nested data structures ( this cool hashy hash) as well as how to require_relative of a file and iterate through it. Also, I have done this assignment before, and I knew we needed to put the 50 x iteration in the driver code, but I wanted to at least try to put it inside of the class; it's now very clear to me why this will not work, so I'm glad we at least attempted it!