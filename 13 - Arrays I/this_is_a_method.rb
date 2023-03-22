p 1.is_a?(Fixnum) # true
p [1, 2, 3].is_a?(Array) # true

arr = ['a', 'b']

if arr.is_a?(Array)
  arr.each { |e| puts e }
end

# a b

# BasicObject
# Object
#
# Integer
# Fixnum Bignum

p [5, 10, 4 -1] <=> [5, 10, 4, 9]
