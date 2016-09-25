
# Pairing SchmuhlFace

#Release 0
#create the method that intakes an array and a number
#evaluate each component of the array and see if it is equal to num
#if it is, return the index value
#if it is not, return nil


def search_array(a, num)
  i = 0
  while i < a.length 
  
  return i if a[i] == num
  i += 1
  end
end


a = [21, 27, 1, 5]
p search_array(a, 23)
=> nil

a = [21, 27, 1, 5]
p search_array(a, 1)
=> 2




#Release 1

def fibonacci(num)
  arr = [0] 
  num.times do |x|
    if x == 0 
      arr[x] = 0
    elsif x == 1
      arr[x] = 1
    else 
      arr[x] = arr[x-1] + arr[x-2]
    end
  end

return arr[0...num]

end

puts fibonacci(100)

#Release 2

#Psuedocode

#Taken a list of data and evaluate each item of the list
#Reorganize the list based on numerical value
#Reorder the list in ascending order



def insertion_sort(array)
  (1..array.length-1).each do |i|
    insertion_value = array.delete_at(i)

    index_inserted = i
    index_inserted -= 1 while index_inserted > 0 && insertion_value < array[index_inserted -1]

    array.insert(index_inserted, insertion_value)
  end

  array
end

ex_array = [ 1, 5, 3, 17, 4, 25, 9]
p insertion_sort(ex_array)











