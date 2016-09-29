# Release 0


  def create_grocery_list(str_items)
    # array_items = str_items.split(" ")
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

#Driver code

my_list = create_grocery_list("apples cereal pizza")
my_list = add_item(my_list, "peach", 2)
my_list = add_item(my_list, "berry", 2)
p my_list


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