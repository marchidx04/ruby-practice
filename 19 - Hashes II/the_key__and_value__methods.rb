cars = {
  toyota: "camery",
  chevrolet: "aveo",
  ford: "F-150",
  kia: "soul"
}

puts cars.key?(:ford) # true
puts cars.key?(:fordd) # false

puts cars.value?("soul") # true
puts cars.value?("soull") # false

puts cars.has_key?(:gm) # false