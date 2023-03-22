number = 5000
verified = true

if number > 2500
  puts "Huge number!"
end

puts "Huge number!" if number > 2500
puts "Huge number!" if verified

puts

x = 8

puts "x is NOT greater than 10" unless x > 10