def sum(*numbers)
  sum = 0
  p numbers
  numbers.each { |num| sum += num }
  sum
end

p sum(1, 2) # 3
p sum(3, 4, 5, 6, 7) # 25
