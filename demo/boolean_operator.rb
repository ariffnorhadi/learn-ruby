require 'date'
paid_at = "hello"
date_format = "%d %b"

paid_at = Date.today + 1

def value(paid_at)
    if paid_at.nil?
      ""
    else
      paid_at == Date.today ? "Paid Today" : paid_at.strftime("%d %b")
    end
end

result = {
    "paid_at" => value(paid_at)
}

puts result
