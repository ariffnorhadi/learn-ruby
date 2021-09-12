# Here are some other ways to access array objects in Ruby.
#
# To access the elements from the end of the list, we can use negative indices.

arr = [9, 5, 1, 2, 3, 4, 0, -1]
puts "arr[-1] => #{arr[-1]}"

puts "arr.first => #{arr.first}"

puts "arr.last => #{arr.last}"

puts "arr.take(3) => #{arr.take(3)}"

puts "arr.drop(3) => #{arr.drop(3)}"

# Challenge!

def neg_pos(arr, index)
  # return the element of the array at the position `index` from the end of the list
  # Clue : arr[-index]
  arr[-index]
end

def first_element(arr)
  # return the first element of the array
  # arr.first
  arr.first
end

def last_element(arr)
  # return the last element of the array
  # arr.last
  arr.last
end

def first_n(arr, n)
  # return the first n elements of the array
  arr.take(n)
end

def drop_n(arr, n)
  # drop the first n elements of the array and return the rest
  arr.drop(n)
end
