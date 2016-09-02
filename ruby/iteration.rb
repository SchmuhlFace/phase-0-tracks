5.3 Pairing lsw0011 & SchmuhlFace

##Release 0

def method

  puts "Why, hello there!"
  yield("Steve", "Tiahna" , "Dali")
end

method { |name1, name2, name3| puts "great to see you, #{name1} and #{name2} and #{name3}"}


## Release 1

 array = ["a", "b", "c", "d"]
 hash = { 1 => 'one' , 2 => 'two', 3 => 'three'}

 array.each do |letter|
 	print "#{letter}\n"
 end

 print "#{hash}\n"

 hash.each do |digit, number|
 	print "#{digit} means #{number}\n"
 end

 hash.map {|digit, number| digit = digit+1}
 print hash

new_array = [1,2,4,3,5,6,7,8,9,10]

for var in new_array.length
	if 0 == new_array[var]%2 
		new_array.del_at(var)
	end
end

print "#{h}\n"
	old_array.delete_if { |number| number%2 == 0 }


##Release 2

#1

old_array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  old_array = old_array.select{|x| x.odd?}

ole_hash = {
  'bunny' => 'intact',
  'rabbit' => 'intact',
  'hare' => 'intact',
  'rodent' => 'intact'
}

ole_hash = ole_hash.select{|x|}
print ole_hash

#2

old_array = old_array.delete_if{|x| x.odd?}
ole_hash = ole_hash.delete_if{|animal, status| animal == "bunny"}

#3

old_array = old_array.drop(3)
ole_hash = ole_hash.reject{|animal, status| animal == "bunny"}

#4

ole_hash = ole_hash.keep_if{|animal,status| animal == "bunny" or animal == "hare"}
print ole_hash
old_array = old_array.drop_while{|number| number < 5 }




	



