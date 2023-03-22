# Argument - object, concrete value, like a number or a string.
# Blocks - a procedure, collection of code

5.times { puts "Ruby is awesome!!" }

name = "JaeWon"

3.times {  
  puts "My name is #{name}"
}

# alternative syntax
# It might look a little bit confusing, but remember the right hand side is evaluated first and all that.
# Ruby is going to evaluate this highlighted bit of code first that is going to return three and that is what is going to be assigned to value. 
value = 3.times do
  puts "#{name}"
end

# the return value of the Times method happens to be the integer itself,
# but the return value of times typically isn't important
# The reason you use a method like this is to repeat a procedure a certian number of times in Ruby.
p value # 3
