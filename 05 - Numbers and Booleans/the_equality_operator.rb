# ==

puts 10 == 10
puts 2 == 3

a = 10
b = 5
c = 10

puts a == b
puts a == c

d = '10'

puts a == d # false

puts 'hello' == 'hello' # true
puts 'hello' == 'Hello' # false
puts 'hello' == 'hello ' # false
puts '5' == '5' # true
puts '5' == 5 # false
puts '5'.to_i == 5 # true
puts '5' == 5.to_s # true

puts

puts 5.class
puts 5.0.class
# these two values are technically, logically equal, they are the same thing.
puts 5 == 5.0