# Hashes, also called associative arrays, are dictionary-like data structures which are similar to arrays.
# Instead of using integers to index an object, however, hashes use any object as its index.

# Task - Create three different Hash collections as explained below

# Initialize empty_hash
empty_hash = Hash.new

# Initialize an empty Hash with the variable name default_hash
# and the default value of every key set to 1

default_hash = Hash.new(1)
# or
default_hash = Hash.new
default_hash.default = 1

# Initialise a hash with the variable name hackerrank and having the key-value pairs

hackerrank = Hash.new
hackerrank["ariff"] = 100
hackerrank["nobody"] = 200

puts "empty_hash => #{empty_hash}"
puts "default_hash => #{default_hash}"
puts "hackerrank => #{hackerrank}"


