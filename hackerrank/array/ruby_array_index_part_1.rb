# Array collections offer various ways to access their elements.

puts 'array'
arr = [9, 5, 1, 2, 3, 4, 0, -1]
print arr
puts
puts "Index 4 of the array: #{arr[4]}"

# A range indicating the start and the end position

puts 'A range indicating the start and the end position'
puts "arr[1..3] #{arr[1..3]} " # .. indicates both indices are inclusive.
puts "arr[1...3] #{arr[1...3]} " # ... indicates the last index is excluded.

# Start index and the length of the range

puts "arr[1,4] - #{arr[1,4]}"

# Challenge!

def element_at(arr, index)
  # return the element of the Array variable `arr` at the position `index`
  # arr.at(index) # or
  # arr[index]
  arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
  # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
  arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
  arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
  # return `length` elements of the Array variable `arr` starting from `start_pos`
  arr[start_pos, length]
end