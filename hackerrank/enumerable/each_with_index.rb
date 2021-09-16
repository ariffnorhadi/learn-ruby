# we've learned about each method
# each_with_index allows us to iterate over items along with an index keeping count of the item

colors = %w[red green blue]
colors.each_with_index { |item, index| p "#{index}:#{item}" }

# in this challenge, the task is to complete the skip_animals method
# that takes an animals array and a skip integer and returns an array
# of all elements except first skip number of items as shown in the example
# below

# > skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
# => ["2:fox", "3:wolf"]

# fixme :)
def skip_animals(animals, skip)
  animals.each_with_index {|item, index| p "#{index}:#{item}" if index > skip-1}
end


skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)

# better solution
def skip_animals_2(animals, skip)
  animals.map.with_index{|a, index| "#{index}:#{a}" if index >= skip}.compact
end