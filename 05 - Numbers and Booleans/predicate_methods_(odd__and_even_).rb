=begin
A predicate method also known as a Boolean method is simply an object method that returns a Boolean value, either a true or a false.
the way I like to think about predicate methods is these are methods that aske the object a question about itselt. => object.method?
=end

puts 10.odd? # false
puts 10.even? # true
puts 9.odd? # true
puts 9.even? # false

puts 1.even?.class # FalseClass

puts 10.positive? # true
puts 10.negative? # false
puts -10.negative? # true
puts -10.positive? # false