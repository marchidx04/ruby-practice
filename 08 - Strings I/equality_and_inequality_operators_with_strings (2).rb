a = "Hello"
b = "hello"
c = "Hello"

p a != "lion" # true
p a == b # false
p a == c # true

# Apple does come before Banana
# This is literally doing an alphabetical store, much like you'd find it within a dictionary and it'll continue by the letter if the couple first letters match
p "Apple" < "Banana" # true
p "Apple" < "App" # false
p "Apple" <= "Appa" # false
p "Apple" <= "Appz" # true

p "A" < "a" # true
p "Z" < "a" # true
p "Z" < "A" # false
p "Help" < "banana" # true
p "help" < "banana" # false
p "Baana" < "banana" # true
