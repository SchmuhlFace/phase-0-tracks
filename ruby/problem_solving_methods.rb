
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


























