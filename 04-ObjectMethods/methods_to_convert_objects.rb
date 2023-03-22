text = '5'
p text
p text.class
p text.to_i
p text.to_i.class

puts '15 apples'.to_i # 15
puts 'apples 15'.to_i # 0
puts 'nonsense'.to_i # 0
puts text.to_f # 5.0
puts text.to_f.class # Float
puts '15 apples'.to_f # 15.0
puts 'apples 15'.to_f # 0.0

number = 5
p number.class # Integer
p number.to_s # "5"
p number.to_s.class # String
p number.to_f # 5.0
p number.to_f.class # Float

percentage = 0.9

p percentage.class
p percentage.to_s # "0.9"
p percentage.to_s.class
p percentage.to_i # 0
p percentage.to_i.class