3.times { |number| puts "Hello there#{number}" }

5.times do |number|
  square = number * number
  puts "The current number is #{number} and its square is #{square}"
end

# undefined local variable or method `square' for main:Object (NameError)
# puts square