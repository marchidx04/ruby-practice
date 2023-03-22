fives = [5, 10, 15, 20, 25, 30, 35, 40]
odds = []
evens = []

fives.each do |number|
  if number.even?
    puts number
  end

  puts number if number.odd?

  odds << number if number.odd?
end

p odds # [5, 15, 25, 35]

fives.each do |number|
  number.even? ? evens << number : odds << number
end

p evens # [10, 20, 30, 40]

fives.each { |number| number.even? ? evens << number : odds << number }

p evens # [10, 20, 30, 40, 10, 20, 30, 40]
