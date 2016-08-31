def method

  puts "Why, hello there!"
  yield("Steve", "Tiahna" , "Dali")
end

method { |name1, name2, name3| puts "great to see you, #{name1} and #{name2} and #{name3}"}