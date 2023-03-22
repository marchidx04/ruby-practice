def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    subtract(a, b)
  elsif operation == "multiply"
    multiply(a, b)
  else
    "That's not a real math opertaion, genius!"
  end
end

p calculator(3, 2) # 5
p calculator(3, 2, "subtract") # 1
p calculator(3, 2, "multiply") # 6
p calculator(3, 2, "?") # "That's not a real math opertaion, genius!"