# puts 5.methods.sort

fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort

p fixnum_methods & float_methods
p fixnum_methods - float_methods
p float_methods - fixnum_methods

array_methods = [1, 2, 3].methods.sort
hash_methods = { key: "value" }.methods.sort

p array_methods & hash_methods
p array_methods - hash_methods
p hash_methods - array_methods
