# what's happening is Ruby thinks that we're trying to call the first method on this number(10)
# And first is not a method that's available on a fixed number integer object.
# undefined method `first' for 10:Integer (NoMethodError)
# puts 1..10.first(3)
p (1..10).first(3) # [1, 2, 3]

alphabet = "a".."z"

p alphabet.first(5) # ["a", "b", "c", "d", "e"]
puts alphabet.first(5) # a b c d e

puts alphabet.last(1) # z

alphabet = "A".."z"
puts alphabet.first(40) # ...h까지 (중간에 [ \ ] ^ _ `도 있음)
