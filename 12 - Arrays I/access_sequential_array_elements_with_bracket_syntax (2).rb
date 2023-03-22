names = ["Tom", "Cameron", "Bob"]

p names[2]
p names[1, 2] # ["Cameron", "Bob"]
p names[100]

p names.fetch(2) # "Bob"
# `fetch': index 100 outside of array bounds: -3...3
# p names.fetch(100)
p names.fetch(100, "Not Found") # Not Found

numbers = [1, 3, 5, 7, 9, 15, 21]

p numbers[0] # 1
p numbers[0, 1] # [1]
p numbers[0].class # Integer
p numbers[0, 1].class # Array

p numbers[100] # nil
p numbers.fetch(100, 'Not Found') # Not Found
p numbers[4, 100] # [9, 15, 21]
