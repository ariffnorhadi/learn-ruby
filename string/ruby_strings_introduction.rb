#  Technically, you could represent the string using an array (or some collection) of characters,
# similar to that of classic languages like C. Any character outside the ASCII encoding set is restricted in C.
# How do we represent characters outside this range?
#
# Before answering this question, let's learn about the different ways to represent strings,
# what they mean and their use cases.

# Ruby provides 3 ways of including string literals into our source code
# 1. Single quoted strings
puts 'Hello, Ariff ! How\'s it going? '

# 2. Double quoted strings
puts "My name is Circle and i Love Pi, Pi is equal to #{Math::PI}"
puts "Hello! There is a tab \t here. Did you see?"

document = <<-HERE
This is a string literal
It has two lines and abruptly ends with a newline . .
HERE

puts document

# Challenge !
# In this introductory challenge, your task is to use each of the above three methods
# to return the text Hello World and others!

def single_quote
  # single quote string here
  'Hello World and others!'
end

def double_quote
  # Double quote string here
  "Hello World and others!"
end

def here_doc
  # Here doc string here
  document = <<-HERE
Hello World and others!
  HERE
end




