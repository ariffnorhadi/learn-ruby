# we have learned to use methods to abstract similar computations into logical chunks of code
# that otherwise would be difficult to manage.
# Methods, in a way, behave like a black box.

def prefix(s, len=1)
  s[0, len]
end

puts prefix("Ruby", 3)
puts prefix("Ruby")

# Challenge !
# FIXME: i dont really know what this challenge wants
#
# copy pasted
def take(arr, slice_length=1)
  len = arr.length
  return [] if slice_length >= len
  arr[-(len - slice_length)..-1]
end
