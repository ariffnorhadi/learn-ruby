user = { "viv":10, "simmy":20, "sp2hari":30 }

user.each do |key, value|
  # some code here
end
# or

user.each do |arr|
  # arr[0] is the key, arr[1] is the value
end

# Challenge !
# Your task is to use each and iterate through the collection and print the key-value pair in separate lines.

def iter_hash(hash)
  # your code here
  hash.each do |key, value|
    puts key
    puts value
  end
end



