# In Ruby 1.8, there's a single each method (remember Enumerable?) which allowed it to iterate over lines of data.
# While it might seem like a logical option to have, how would one go about iterating on each byte or each character?
# It turns out that it was not so clean, and people had to resort to tricks for some of these functionalities.
#
# With Ruby 1.9, each was removed from the String class and is no longer an Enumerable.
# Instead, we have more explicit choices based on what we need to iterate - bytes, chars, lines or codepoints.
#
# each_byte iterates sequentially through the individual bytes that comprise a string
# each_char iterates the characters and is more efficient than [] operator or character indexing
# each_codepoint iterates over the ordinal values of characters in the string
# each_line iterates the lines

money = "$1000"
money.each_byte { |x| p x }
money.each_char { |x| p x }

name = 'ariff'
p name

# Challenge !
# Write the method count_multibyte_char which takes a string as input
# and returns the number of multibyte characters (byte size > 1) in it.

def count_multibyte_char(str)
  count = 0
  str.each_char do |char|
    if char.bytesize > 1
      count+=1
    end
  end
  count
end


