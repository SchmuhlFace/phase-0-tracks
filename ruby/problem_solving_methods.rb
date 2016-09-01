#create the method that intakes an array and a number
#evaluate each component of the array and see if it is equal to num
#if it is, return the index value
#if it is not, return nil


def search_array(arr, num)
  arr.each {|x| 
    if x == num
    print x
    else x != num
    print nil
    end   } 

end

 arr = [ 2, 4, 6, 8]

 search_array(arr, 2)

