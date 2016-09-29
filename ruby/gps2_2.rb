# Release 0


  def create_grocery_list(str_items)
    grocery_list = {}
    str_items.split(" ").each do |item| 
      grocery_list[item]= 1
    end
    grocery_list
  end

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
  end


#Driver code

my_list = create_grocery_list("apples cereal pizza")
my_list = add_item(my_list, "peach", 2)
my_list = add_item(my_list, "berry", 2)
p my_list
p my_list = remove_item(my_list,"peach")
p my_list = update_quantity(my_list,"berry",100)
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
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: