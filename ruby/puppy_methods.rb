#Pairing w/ Evanrenaud & Schmuhlface


class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    puts "Woof!" * times
  end

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
  end

  def play_dead()
    puts "*lies down on its back*"
  end

  def initialize()
    puts "Initializing new puppy instance..."
  end

end

# Buddy = Puppy.new
# Buddy.fetch("ball")
# Buddy.speak(5)
# Buddy.roll_over
# p Buddy.dog_years(4)
# Buddy.play_dead

class Food

  def prepare(meal)
    puts "It's time to eat #{meal}"
    meal
  end

  def calories(cal)
    puts "You have eaten #{cal} calories."
    cal
  end

  def initialize
    puts "What's cookin?"
  end

end

class_array = []

50.times do |instance|
  instance = Food.new
  class_array << instance
end

class_array.each do |instance|
  instance.prepare("breakfast")
  instance.calories(500)
end#


