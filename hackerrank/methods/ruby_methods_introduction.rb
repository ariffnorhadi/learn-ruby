# in this section, we will explore the guiding principles behind methods,
# learn more feature and how to use them efficiently in our programs
def hello_world
  'Eha! Ruby'
end

puts hello_world

# Challenge !
# write a method prime? that takes an argument and returns true or false depending on if the number is prime or not.
# FIXME: try not to cheat
require 'prime'
def prime?(num)
  Prime.prime?(num)
end

puts prime?0