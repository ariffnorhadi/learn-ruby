arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]
puts "arr => #{arr}"

arr.pop
puts "delete an element from the end of the array with arr.pop => #{arr}"

arr.shift
puts "delete an element form the beginning of the array with arr.shift => #{arr}"

arr.delete_at(4)
puts "delete an element at a given position with arr.delete_at(index), index = 4, => arr is #{arr}}"

arr.delete(5)
puts "delete all occurrences of a given element with arr.delete(obj), obj = 5 so arr => #{arr}"

# Challenge!

def end_arr_delete(arr)
  # delete the element from the end of the array and return the deleted element
  last_element = arr[-1]
  arr.pop
  last_element
end

def start_arr_delete(arr)
  # delete the element at the beginning of the array and return the deleted element
  first_element = arr.first
  arr.shift
  first_element
end

def delete_at_arr(arr, index)
  # delete the element at the position #index
  arr.delete_at(index)
end

def delete_all(arr, val)
  # delete all the elements of the array where element = val
  arr.delete(val)
end

