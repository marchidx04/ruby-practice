thing = "rocket ship"

thing[0] = "p"
p thing # "pocket ship"

thing[1] = "ac"
p thing # "paccket ship"

p thing.length

thing[12] = "12"
p thing # "paccket ship12"

# Strings/overwrite_characters_in_string.rb:14:in `[]=': index 100 out of string (IndexError)
# thing[100] = "321"

fact = "I love blueberry pie"
p fact # "I love blueberry pie"

fact[7, 4] = "straw"
p fact # "I love strawberry pie"

fact[2..5] = "g"
p fact # "I g strawberry pie"