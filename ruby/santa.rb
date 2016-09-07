##SantaCon Simulator

class SantaCon

  #Your class should have three instance methods:

  def initialize (gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicty
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def santa_info
    puts "This new Santa is a #{@gender} who is #{ethnicity} and #{@age} years old. "
  end

#DRIVER CODE

fresh_santa = SantaCon.new
fresh_santa.speak
fresh_santa.eat_milk_and_cookies("sugar cookie")





