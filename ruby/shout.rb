##Writing my first module!

module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end

end

#Driver Code

# p Shout.yell_angrily("hey")
# => "hey!!! :("
# p Shout.yelling_happily("hey")
# => "hey!!! :)"