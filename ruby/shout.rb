##Writing my first module!

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end



# DRIVER CODE
#Test

# Shout.yell_angrily("hey")
# => "hey!!! :("


# Shout.yell_happily("why")
# => "why!!! :)"

#Release 3
# # Declare Classes


class Clown
  include Shout
end

class Eagle
  include Shout
end

#Test mixin

clown = Clown.new
clown.yell_angrily("An eagle")
  # => "An eagle!!! :("
clown.yell_happily("An eagle")
  # => "An eagle!!! :)"


eagle = Eagle.new
eagle.yell_angrily("A clown")
eagle.yell_happily("A clown")
  # => "A slown!!! :)"

