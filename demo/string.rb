string = 'salam'.freeze
string = 'hello' # will not work as the variable is frozen , refer line 1
puts string

# References
# https://stackoverflow.com/questions/27664050/ruby-freeze-method

@failed = "testing"
puts @failed

messages = ""

1..5.times do |index|
  messages+= "#{index}, exception_message \n"
end

puts messages