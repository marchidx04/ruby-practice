def odd_or_even(number)
  if number.odd?
    "That number is odd"
  else
    "That number is even"
  end
end

p odd_or_even(5) # "That number is odd"
p odd_or_even(10) # "That number is even"