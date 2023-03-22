=begin
gets method
the reason it has that name is because the gets method allows us to collect a string input from the user
=end
puts "Hi, what's your name?"
# name = gets # JaeWon\n
name = gets.chomp # JaeWon

puts "Your name is #{name}? Awesome!"

puts "Great, what's your age?"
age = gets.chomp

# `+': no implicit conversion of Integer into String (TypeError)
# puts age + 5

puts age.to_i + 5
