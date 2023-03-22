p [1, 3, 5, 7, 2].any? do |number|
  number.even?
end

p [1, 3, 5, 7].any? { |n| n.even? }
p [1, 3, 5, 7, 4].all? { |n| n.even? } # false
p [1, 3, 5, 7, 4].any? { |n| n.even? } # true
