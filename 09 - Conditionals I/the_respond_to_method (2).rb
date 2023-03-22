=begin
What the .respond_to method does is allow us to see whether an object can respond to a method.
=end

num = 1000

p num.respond_to?("next") # true
p num.respond_to?("class") # true
p num.respond_to?("even?") # true
p num.respond_to?("even") # false

# ndefined method `length' for 1000:Integer (NoMethodError)
# p num.length
p num.respond_to?("length") # false

if num.respond_to?("next")
  p num.next
end

puts "Hello".respond_to?("length") # true
puts "Hello".respond_to?(:length) # true
puts "Hello".respond_to?(:even?) # false
puts "Hello".respond_to?(:upcase) # true
puts 1.respond_to?(:next) # true