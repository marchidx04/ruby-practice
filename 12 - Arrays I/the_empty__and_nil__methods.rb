puts [1, 2, 3].empty? # false
puts [].empty? # true
puts [].length == 0 # true
puts [nil].empty? # false

puts [false, false, false].nil? # false
puts [nil].nil? # false
puts [].nil? # false
puts nil.nil? # true

letters = ('a'..'j').to_a
p letters
character = letters[25]
p character.nil? # true
