# in this part, we will learn about methods in String class that can help us to search and replace portions of the string
# based on a text or pattern

# String.include?(string) - returns true if String contains the given string or character. simple!

puts "salam".include?("lo")
puts "salam".include?("al")

# String.gsub(pattern, <hash|replacement>) - returns a new string with all the occurrences
# of the pattern substituted for the second argument.
# the pattern is typically a Regexp, but a string can also be used

puts "live".gsub(/[aeiou]/, '*')
puts "salam".gsub(/[aeiou]/, '')

# Either method will depend upon the problem we are trying to solve, and the nature of input-output
# behaviour we desire

# Challenge !

#In this challenge, your task is to write the following methods:
#
# mask_article which appends strike tags around certain words in a text.
# The method takes 2 arguments: A string and an array of words.
# It then replaces all the instances of words in the text with the modified version.
# A helper method strike, given one string, appends strike off HTML tags around it.
# The strike off HTML tag is <strike></strike>.
#
# > strike("Meow!") # => "<strike>Meow!</strike>"
# > strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
# > mask_article("Hello World! This is crap!", ["crap"])
# "Hello World! This is <strike>crap</strike>!"

def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(str, arr)
  arr.each do |word|
    str.gsub!(word, strike(word))
  end
  str
end

puts strike("hey")
puts mask_article("Hello World! This is crap!", ["crap"])