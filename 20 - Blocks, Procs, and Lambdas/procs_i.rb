a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a.map { |num| num ** 3 }

a_cubes = a.map { |num| num ** 3 }
b_cubes = b.map { |num| num ** 3 }
c_cubes = c.map { |num| num ** 3 }

p a_cubes
p b_cubes
p c_cubes

cubes = Proc.new { |number| number ** 3 }

a_cubes = a.map(&cubes)
p a_cubes

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }
p a_cubes, b_cubes, c_cubes

currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.70 }

p currencies.map(&to_euros)

ages = [10, 60, 83, 30, 43, 30]
is_old = Proc.new do |age|
  age > 55
end

p ages.select(&is_old) # [60, 83]
p ages.reject(&is_old) # [10, 30, 43, 30]
