# Pairing partners: 
  # zaslam72
  # schmuhlface

# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(x)
#     x.times do 
#       puts "Woof!"
#     end
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(n)
#     dog_age = n * 7
#     p dog_age
#   end

#   def sit
#     puts "Sit!"
#   end

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

# end


# # Driver code
# maxine = Puppy.new
# maxine.fetch("ball")
# maxine.speak(4)
# maxine.roll_over
# maxine.dog_years(3)
# maxine.sit


class Fruit

  def initialize
    puts "Initializing new fruit instance..."
  end

  def apples_in_basket(a)
    a.times do 
      puts "An apple a day keeps the doctor away!"
    end
  end

  def color_of_apple(color)
    puts "This is such a lovely #{color} apple!"
  end

end

# Driver code
apple = Fruit.new
apple.apples_in_basket(4)
apple.color_of_apple("green")

apples = []
50.times {apple = Fruit.new
  apples.push(apple)}
 
p apples 

apples.each do |apple|
  apple.apples_in_basket(2)
  apple.color_of_apple("red")
end

