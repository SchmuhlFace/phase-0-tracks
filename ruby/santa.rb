##SantaCon Simulator

class SantaCon

  attr_reader :age , :ethnicity 
  attr_accessor :gender , :age , :reindeer

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

  def celebrate_birthday
    @age += 1 
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.push(reindeer)
    puts "Hey, #{reindeer}! You took a bite of my cookie! Bad #{reindeer}! To the end of the line!"
  end

  def info
    puts "Santa is a #{@gender} who is #{@ethnicity} and #{@age} years old. This santa's reindeer lineup post cookie incident: #{@reindeer_ranking}"
  end

end


#Use array class random method

  def random_gender
      genders = ["agender", "female", "bigender", "male", "female", "girlymon", "human", "they", "gender fluid"]
      gender = genders[rand(genders.length)]
  end

  def random_ethnicity
      ethnicity_arr = ["black", "latino", "white", "japanese", "african", "human", "butterfly", "Nintendo","out of this world"]
      ethnicity = ethnicity_arr[rand(ethnicity_arr.length)]
  end


#Driver Code

puts "Ready to make some awesome santas for SantaCon? Press enter!"
enter = gets.chomp

santas = []
#empty array to put fresh santas inside

#loop and make fresh santas. Test different numbers.
while true
  3.times do |number|
  fresh_santa = SantaCon.new(random_gender, random_ethnicity)
  fresh_santa.age = rand(140)
  #puts "*********************"
  #puts "#{fresh_santa.speak}"
  #puts "#{fresh_santa.eat_milk_and_cookies("sugar cookie")}"
  #puts "#{fresh_santa.get_mad_at("Dasher")}"
  #puts "*********************"
  puts "Santa ##{number+1}'s Age: #{fresh_santa.age}"
  puts "Santa ##{number+1}'s Gender: #{fresh_santa.gender}"
  puts "Santa ##{number+1}'s Ethnicity: #{fresh_santa.ethnicity}"
  puts "General summary:" 
  puts "#{fresh_santa.info}"
  puts "*********************"
  end
puts "Hit enter to make more santas. If you have enough santas and you're read to attend SantaCon, type *quit* to exit"
  user_input = gets.chomp
      if user_input == "quit"

      puts "Have the best time at SantaCon! Jingle all the way!"
  break
  end
end
