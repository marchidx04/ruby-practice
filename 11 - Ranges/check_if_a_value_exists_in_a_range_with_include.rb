half_alphabet = "a".."m"
p half_alphabet === "n" # false

puts half_alphabet.include?("z") # false
puts half_alphabet.include?("c") # true

half_alphabet = "a"..."m"
puts half_alphabet.include?("m") # false

numbers = -14.. 79
puts numbers.include?(100) # false
puts numbers.include?(79) # true
p numbers === -14 # true
p numbers === 100 # false
