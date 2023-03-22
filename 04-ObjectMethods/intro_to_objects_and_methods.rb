# the best practice in the Ruby community is to exclude or remove parentheses if they are not needed.
puts "hello world".length
puts "hello world".length()
puts "hello world".upcase
puts "hello world".upcase()
puts "HELLO WORLD".downcase
puts "HELLO WORLD".downcase()

expression = "TOTALLY DIFFERENT"
puts expression.downcase