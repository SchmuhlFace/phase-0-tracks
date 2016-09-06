##SantaCon Simulator

class SantaCon

  #Your class should have three instance methods:

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

#DRIVER CODE

santa = SantaCon.new
santa.speak
santa.eat_milk_and_cookies("sugar cookie")

