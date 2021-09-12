# Arrays provide a variety of methods that allow to add elements to them.

x = [1, 2]
puts "x = #{x}"
x.push(3) # push allows one to add an element to the end of the list
puts "x.push(3) => then x become #{x}"

x.insert(0, 5, 6, 7, 2)
# insert allows one to add one or more elements starting from a given index
# (shifting elements after the given index in the process).
puts "x.insert(1,5,6,7,2) => then x become #{x}"

# unshift allows one or more elements to be added at the beginning of the list
y = [1, 2, 3]
y.unshift(11, 22, 33)
puts "y = #{y}"
puts "y.unshift(11, 22, 33) => y become #{y}"

# Challenge!

def end_arr_add(arr, element)
  # Add `element` to the end of the Array variable `arr` and return `arr`
  arr.push(element)
end

def begin_arr_add(arr, element)
  # Add `element` to the beginning of the Array variable `arr` and return `arr`
  arr.unshift(element)
end

def index_arr_add(arr, index, element)
  # Add `element` at position `index` to the Array variable `arr` and return `arr`
  arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
  # add any two elements to the arr at the index
  arr.insert(index, 11, 22)
end


