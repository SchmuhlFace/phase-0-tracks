def method
  puts "This is a method!"
  yield ("sweet", "awesome", "rad")
end

method { |var1, var2, var3| puts "That's a #{var1}, #{var2}, #{var3} method!" }