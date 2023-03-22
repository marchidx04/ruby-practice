p "Ruby" * 3
p [1, 2, 3] * 3

def custom_multiply(array, number)
  final = []
  # nunber.times { final += array }
  number.times { array.each { |elem| final << elem } }
  final
end

p custom_multiply([1, 2, 3], 3)