puts 10.5.floor # 10
puts 10.5.floor.class # Integer

puts

puts 10.4.ceil # 11
puts 10.8.ceil # 11
puts 10.8.ceil.class # Integer

puts

puts 3.14159.round # 3
puts 3.5.round # 4
puts 3.5.round.class # Integer
puts 3.14159.round(2) # 3.14
puts 3.14859.round(2) # 3.15
puts 3.14859.round(3) # 3.149
puts 3.14859.round(3).class # Float

puts

puts 5.35.abs # 5.35
puts -5.35.abs # 5.35
puts -5.35.abs.positive? # true