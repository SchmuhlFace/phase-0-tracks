class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end


end

# driver code

bb_santa = Santa.new

p bb_santa.speak
p bb_santa.eat_milk_and_cookies("snickerdoodle")

# Initializing Santa instance...
# Ho, ho, ho! Haaaappy holidays!
# nil
# That was a good snickerdoodle cookie.
# nil
# => nil
