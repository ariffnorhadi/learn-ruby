# When we index string, we either extract or alter the portions,
# this is perhaps the most important operation we want to perform in strings
# string class provides array-like square bracket [] operator, which allows us to extract portions of the string
# as well as altering the content when used on the left side of an assignment

str = 'Hello World and Home!'
puts str[str.size-1] # str[-1] # first character from the end of the string
puts str[0]

# more often, we want to extract specific portions of the string rather than individual characters
# to do this, use comma seperated operands between the square brackets

# the first operand specifies an index (which may be negative), the second specifies a length (must non-negative)

puts str[0,4] # goes from 0,1,2,3 (index)

puts "from the end #{str[-1, 3]}" # why only print "!" ?

str = 'Hello'
str[str.size, 0] = ' World !'
puts str

str[5,0] = ','
puts str

puts "str[5,1] => #{str[5,1]}"
str[5,1] = ' World'
puts str

# but wait, there's more! ruby also allows to index strings using a Range or a Regexp object as well. (later ya)

# Challenge !
#
# In this challenge, your task is to code a serial_average method which is described below:
#
# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number,
# XX.XX and YY.YY are two digit numbers including up to two decimal digits.
#
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string,
# and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.
#
# for example
# > serial_average('002-10.00-20.00')
# "002-15.00"

def serial_average(str)
  serial_num = str[0,3]
  first_num = str[4,5].to_f
  second_num = str[10, 5].to_f
  average = (first_num + second_num) / 2
  rounded_average = average.round(2).to_s
  "#{serial_num}-#{rounded_average}"
end

test_str = '001-12.43-56.78'
puts serial_average(test_str)


