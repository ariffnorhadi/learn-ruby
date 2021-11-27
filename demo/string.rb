string = 'salam'.freeze
string = 'hello' # will not work as the variable is frozen , refer line 1
puts string

# References
# https://stackoverflow.com/questions/27664050/ruby-freeze-method

@failed = "testing"
puts @failed

messages = "first string, "
message_2 = "second message"

msg = message_2 + messages

puts msg

