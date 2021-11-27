start = Time.now

message = ""
count = 0
1..90000.times do |i|
  message+= "#{i} "
  count += 1
  break if count == 5
end

finish = Time.now
duration = finish - start
puts duration
puts "count: #{count}" # 5

frequency = 9

puts "ok" if count == 5 || frequency == 6

max = 10
count = 0
valid = 5 # assume 5 is valid
while count <= max
  count += 1
  puts count
  unless count != valid
    next
  end
  puts "next process"
end
