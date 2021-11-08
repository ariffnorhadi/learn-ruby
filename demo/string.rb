string = 'salam'.freeze
string = 'hello' # will not work as the variable is frozen , refer line 1
puts string

# References
# https://stackoverflow.com/questions/27664050/ruby-freeze-method

@failed = "testing"
puts @failed

messages = "first string, "
message_2 = "second message"

def add_messages
  messages_2 += "hello"
end

add_messages

puts message_2

