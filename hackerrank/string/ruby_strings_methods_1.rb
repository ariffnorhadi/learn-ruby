# text info can be read from varied sources and is often unsuitable for direct processing or usage by core functions
# this necessitates methods for post-processing and data-fixing.
# this tutorial will teach us how to remove flanking whitespace and newline from strings

str = "hello world!"
puts str.chomp("orld") # not working
puts  "Hello World!".chomp("orld!") # works fine

# String.strip - returns a new string with the leading and trailing whitespace removed

puts " hello  world  ".strip

# String.chop - returns a new string with the last character removed. note that carriage returns (\n, \r\n)
# are treated as single character and, in the case they are not present, a character from the string will be removed.

puts "string".chop
puts "string\n".chop

# Challenge !
# The task is to code a process_text method, which takes an array of strings as in put and returns a single joined
# string with all flanking whitespace and new lines removed. each string has to be seperated by a single space

def process_text(str)
  new_str = ""
  str.each do |str|
    str.strip
    new_str[new_str.size] = " #{str.strip}"
  end
  new_str.strip
end

arr_str = ["Hi, \n", " Are you having fun?          "]
puts process_text(arr_str)

# better solution

def process_text_by_rsurana(arr)
  arr.map {|s| s.strip}.join(" ")
end

