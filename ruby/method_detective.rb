# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"Howdy".swampcase
# =>"hOWDY"

# "zom".<???>
# => “zoom”
"zom".gsub!('o','oo')
# => “zoom”

"why".gsub!('w','s')
# => "shy"

"enhance".center(15)
# => "    enhance    "

"hello".center(15)
# => "     hello     "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"I love to shout!".upcase
# => "I LOVE TO SHOUT!"

"the usual".insert(9, ' suspects')
# => "the usual suspects"

"cheese".insert(6, ' pizza')
# => "cheese pizza"

" suspects".insert(-10, 'the usual')
# => "the usual suspects"


"The case of the disappearing last letter".slice 0..-2
# => "The case of the disappearing last lette"

'The mystery of the missing first letter' [1..-1]
# => 'he mystery of the missing first letter'

"Elementary,    my   dear        Watson!".squeeze(" ") 
# => "Elementary, my dear Watson!"

# *or*

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".each_byte.to_a
# => [122]
# This number is the ASCII assigned to the letter "z".


"How many times does the letter 'a' appear in this string?".count("a")
# => 4