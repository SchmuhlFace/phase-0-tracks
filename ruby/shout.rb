##Writing my first module!

##Writing my first module!

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end

end


# Declare Classes


class Human
  include Shout
end

class Fox
  include Shout
end


#Test mixin

# human = Human.new
#   human.yell_angrily("A bear")
#   => "A bear!!! :("
  
  #human.yell_happily("A bear")
  #=> "A bear!!! :)"


# fox = Fox.new

  #fox.yell_angrily("A human")
  #=> "A human!!! :("
  
  #fox.yell_happily("A human")
  #=> "A human!!! :)"

## Driver Code - test inital

# p Shout.yell_angrily("hey")
# => "hey!!! :("


# p Shout.yelling_happily("hey")
# => "hey!!! :)"