y = nil
p y # 5

# What's different about this is that the conditional assignment operator will only assign the value to the variable if the current value of the variable is nil.
y ||= 5
p y # 5

y ||= 10
p y # 5

greeting = "Hello"
extraction = 100
letter = greeting[extraction]
letter ||= "Not found!"

p letter # "Not found!"