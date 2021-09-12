# In Ruby, strings are objects of the String class,
# which defines a powerful set of operations and methods for manipulating text
# (e.g., indexing, searching, modifying, etc.). Here are a few easy ways to create Strings:

my_string = "Hello." # create a string from a literal
my_empty_string = String.new # create an empty string
my_copied_string = String.new(my_string) # copy a string to a new variable

str = "With ♥!"
print("My String's encoding: ", str.encoding.name)
print("\nMy String's size: ", str.size)
print("\nMy String's bytesize: ", str.bytesize)

# Task
# In this challenge, we practice setting the encoding information for some string of text using Ruby's Encoding methods.
# Write a function named transcode which takes a  encoded string as a parameter, converts it to an  encoded string, and returns the result.
#
# Input Format
#
# Our hidden code checker will call your function, passing it an  encoded string as an argument.
#
# Constraints
#
# Your function must be named transcode.
# Output Format
#
# Your function must return an UTF-8 encoded string.
#
#

def transcode(str)
  str.force_encoding('UTF-8')
end
