# blocks
# higher order function is a tool that takes other functions as params or return then
# as result.
#
# Blocks are nameless methods that can be passed to another method as a parameter
# passing a block to a method is a great way of data abstraction

def call_block
  puts "Start of method"
  yield
  puts "End of method"
end

call_block do
  puts "I am inside call_block method"
end

def calculate(a, b)
  puts a * b
  yield(a, b)
end

puts calculate(15, 10) { |a, b| a + b }

# Task or challenge
# create a factorial method
# FIXME: Find factorial algorithm

def factorial(n)
  result = (1..n).reduce(1) { |all,x| all *= x }
  yield(result)
end

n = gets.to_i
factorial(n) do |result|
  puts result
end


