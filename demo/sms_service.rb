class SMSService
  def initialize(sms_id, date)
    @sms_id = sms_id
    @date = date
  end

  def self.send_sms(to, text)
    puts "send sms to = #{to} with content of #{text}"
  end
end

SMSService.send_sms(01233333, "hi this is the content of the message")

error_messages = ""

(0..5).each do |index|
  error_messages+= "#{index.to_s},"
end

puts error_messages
# puts ''
# 6.times do |index|
#   puts index
# end

count = 1/0
