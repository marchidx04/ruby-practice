# 0 <= rand < 1
puts rand

puts rand.round(3) # 0.838

# any full integer between zero and ninety nine included
puts rand(100)

p rand.class # Float
p rand(100).class # Integer

puts rand(50..53) # 50 - 53