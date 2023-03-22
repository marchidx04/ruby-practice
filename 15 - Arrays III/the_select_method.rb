grades = [80, 95, 13, 76, 28, 39]

matches = grades.select do |number|
  number >= 75
end

evens = grades.select { |number| number.even? }

p matches
p evens
