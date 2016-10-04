# Release 0


  def create_grocery_list(str_items)
    grocery_list = {}
    str_items.split(" ").each do |item| 
      grocery_list[item]= 1
    end
    grocery_list
  end

<<<<<<< HEAD
  def add_item(list, str_item, num)
    list[str_item] = num 
    list
  end

  def update_quantity(list,str_item,new_num)
    list[str_item] = new_num
    list
  end

  def remove_item(list, str_item_remove)
    list.delete(str_item_remove)
    list
  end

  def print_list(list)
    puts "here's your grocery list:"
    list.each {|item,quantity| puts "*#{item}:#{quantity}"}
=======
  def add_item(g_l, str_item, num)
    g_l[str_item] = num 
    g_l
  end

  def remove_item(g_l, str_item_remove)
    g_l.delete(str_item_remove)
    g_l
  end

  def update_quantity(g_l,str_item,new_num)
    g_l[str_item] = new_num
    g_l
  end

  def print_list(g_l)
    puts "here's your grocery list:"
    g_l.each {|item,quantity| puts "*#{item}:#{quantity}"}
>>>>>>> 50bc3144704857729ec595682d1258de7ce3d614
  end


#Driver code

my_list = create_grocery_list("apples cereal pizza")
my_list = add_item(my_list, "peach", 2)
my_list = add_item(my_list, "berry", 2)
my_list = add_item(my_list, "lemonade", 2)
my_list = add_item(my_list, "tomatoes", 3)
my_list = add_item(my_list, "onions", 1)
my_list = add_item(my_list, "icecream", 4)
p my_list
p my_list = remove_item(my_list,"lemonade")
p my_list = update_quantity(my_list,"icecream",1)
p my_list = print_list(my_list)



# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty data structure to shovel items into
  # put each item into an hash/array
  # set default quantity of each item to 1
  # print the ugly hash list to the console [using last method "make pretty and print"
  # output: hash that prints

# Method to add an item to a list
# input: take in item as parameter
# steps: shoveling an item into the array/hash
# output: updated hash grocery list

# Method to remove an item from the list
# input: list hash/collection and the item as parameters
# steps: delete a specific item in the list as well as it's quantity
# output: new list with the deleted item gone.

# Method to update the quantity of an item
# input: list hash/collection and the quantity
# steps: USe the list hash and key to call up the number which is the value and put a new number in its place
# output: updated list with new quantity 

# Method to print a list and make it look pretty
# input: the final list
# steps: use the awesome .each method to print out each item and quantity, which will make this look pretty. Add punctuation for added flare.
# output: a VERY lovely list of items with quantities so I can go grocery shopping RIGHT ;)



#REFLECTION

#What I learned about pseudocoding: I don't need to be so stressed about it. I had the chance to practice it on my own and it went well. Daniel suggested I do the first two, and then the rest. this helped tremendously.

#Trade offs: hashes and arrays are containers, and important for this exercise. I like that a an array was needed first, and it transitioned nicely into a hash ( even logically so!).

#A method returns the last declared variable. I GET this now! I also understand why we need to sometimes use hard returns ( we don't have to in this exercise).

#You can pass all kinds of things between methods when you use variables, even other methods (says the text at the top of this exercise). This time I passed my hash via a variable, a string, and an integer. 

<<<<<<< HEAD
#Because I was able to solo pair, I now am really understanding how to make methods "speak" to each other. I went through making "bad code" become good code, and Daniel helped me see the *logical* progression of how this works. I liked being able to think through things by making mistakes and seeing my errors, as well as learning more DRY ways to do things. I'm going to retry this exercise on my own for practice / a refresher before the RUBY test, b/c I found this very helpful. In my last pair, we made an EXTREMLY complicated program that really confused me. This time, I feel MUCH better about the concepts I've learned ( hashes, arrays, how to pass info, etc.)
=======
#Because I was able to solo pair, I now am really understanding how to make methods "speak" to each other. I went through making "bad code" become good code, and Daniel helped me see the *logical* progression of how this works. I liked being able to think through things by making mistakes and seeing my errors, as well as learning more DRY ways to do things. I'm going to retry this exercise on my own for practice / a refresher before the RUBY test, b/c I found this very helpful. In my last pair, we made an EXTREMLY complicated program that really confused me. This time, I feel MUCH better about the concepts I've learned ( hashes, arrays, how to pass info, etc.)





>>>>>>> 50bc3144704857729ec595682d1258de7ce3d614
