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
puts count