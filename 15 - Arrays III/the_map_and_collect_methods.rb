numbers = [1, 2, 3, 4, 5]
squares = []

numbers.each { |number| squares << number ** 2 }

p squares

squares2 = numbers.map { |number| number ** 2}
p squares2

fahr_temperature = [105, 73, 40, 18, -2]

celsius_tempatures = fahr_temperature.map do |temp|
  minus32 = temp - 32
  minus32 * (5.0/9.0)
end

p celsius_tempatures

squares2 = numbers.map { |number| puts number ** 2}
p squares2 # [nil, nil, nil, nil, nil]
