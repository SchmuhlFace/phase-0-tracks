5.3 REDO

# Release 0


def say_yo
  puts "Yo, home-E!"
  yield("Rory", "June")
  #yield evaluates the code before, which is a block
end

#value of block parameter defaults to nil

say_yo { |name1, name2| puts "You look fresh, #{name1} and #{name2}!" }

# => Yo, home-E!
# You look fresh, Rory and June!

# Release 1 ###########

# .each of an array

animal_names = ["frog", "turtle", "fox"]
new_animals = []

puts "Original data:"
p animal_names
p new_animals

animal_names.each do |animal|
  new_animals << "rat"
end

puts "After .each call:"
p animal_names
p new_animals

# . map! of an array

animal_names = ["frog", "turtle", "fox"]
new_animals = []

puts "Original data:"
p animal_names
p new_animals

animal_names.map! do |animal|
  new_animals << "rat"
end

puts "After .each call:"
p animal_names
p new_animals


# .each of a hash


animalswbabies = {
  frog: "2",
  turtle: "100",
  fox: "5"
}

animalswbabies.each do |animal, num_babies|
  puts "The #{animal} has #{num_babies} babies."
end

# The frog has 2 babies.
# The turtle has 100 babies.
# The fox has 5 babies.
# => {:frog=>"2", :turtle=>"100", :fox=>"5"}


##Release 2

#arrays

old_array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  
   old_array = old_array.select{|x| x.odd?}
   # => [1, 3, 5, 7, 9, 11, 13, 15]

   old_array = old_array.drop(3)
   # => [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

   old_array = old_array.drop_while{|number| number < 5 }
   # => [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]


#hashes 
animal_hash = {
  'bunny' => 'intact',
  'rabbit' => 'intact',
  'hare' => 'intact',
  'rodent' => 'intact'
}

animal_hash = animal_hash.delete_if{|animal, status| animal == "bunny"}
# => {"rabbit"=>"intact", "hare"=>"intact", "rodent"=>"intact"}

animal_hash = animal_hash.reject{|animal, status| animal == "bunny"}
# => {"rabbit"=>"intact", "hare"=>"intact", "rodent"=>"intact"}

animal_hash = animal_hash.keep_if{|animal,status| animal == "bunny" or animal == "hare"}
# => {"bunny"=>"intact", "hare"=>"intact"}



	



