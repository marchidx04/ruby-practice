# Ruby methods return nil by default
def nothing
end

p nothing # nil
p nothing.class # NilClass

=begin
  What Ruby is going to do is look at the very last line of logic, evaluate that, get the final expression
  or calculation, and automatically return that back as the return value.
=end
def add_two_number(num1, num2)
  # Line 1
  # Line 2
  # Ruby has automatically returned the last line, the last evaluation.
  num1 + num2
end

puts add_two_number(3, 4) # 7

def calculate_meal_cost(cost, tip = 0.2)
  (cost * (tip + 1)).floor
end

puts calculate_meal_cost(100, 0.12)