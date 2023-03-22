fruits = ["Apple", "Orange", "Grape", "Banana"]

puts fruits[0] # Apple
puts fruits[1] # Orange
puts fruits[3] # Banana
p fruits[100] # nil
p fruits[4] # nil

puts fruits[-1] # Banana
puts fruits[-2] # Grape
puts fruits[-4] # Apple
p fruits[-100] # nil


puts fruits.[](0) # Apple
puts fruits.[](-1) # Banana
p fruits.[](-15) # nil

puts Array.methods
