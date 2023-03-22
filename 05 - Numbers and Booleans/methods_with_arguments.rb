# We give include an argument, an input, which is another string that include is goting to ckeck for within Big Mac.
# So the way that we can provide an argument in Ruby is we do a space right here and then we write our actual argument.
puts "Big Mac".include? "Big" # true
puts "Big Mac".include? "big" # false
# `include?': wrong number of arguments (given 0, expected 1) (ArgumentError)
# puts "Big Mac".include?
# `include?': wrong number of arguments (given 2, expected 1) (ArgumentError)
# puts "Big Mac".include? "A", "B"

puts "Big Mac".include?("Big") # true
puts "Big Mac".include?("big") # false

puts ("Double Whopper", "Triple Whopper")