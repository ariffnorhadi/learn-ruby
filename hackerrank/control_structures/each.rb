# ruby offers control structures that let us iterate through collections
# one of them would be 'each'

# eg.

def scoring(arr)
  arr.each do |user|
    user.update_score
  end
end

