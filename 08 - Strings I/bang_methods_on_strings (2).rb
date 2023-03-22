=begin
A bang method is a special type of method in Ruby
It is a method that has a side effect.
And what I mean by side effect is that a bang method usually medifies or mutates the original object
that the method is called on bang method names are a little bit more powerful, they're more special
=end
word = "hello"
p word.capitalize # "Hello"
p word # "hello"

# word = word.capitalize
# p word # "Hello"

# mutate the original object
p word.capitalize! # "Hello"
p word # "Hello"

word.upcase!
p word # "HELLO"

word.downcase!
p word # "hello"

word.reverse!
p word # "olleh"

word.swapcase!
p word # "OLLEH"