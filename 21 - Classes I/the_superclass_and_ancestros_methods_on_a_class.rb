p Fixnum.superclass # Numeric
p 5.class.superclass # Numeric 
p 5.class.superclass.superclass # Object
p 5.class.superclass.superclass.superclass # BasicObject
p 5.class.superclass.superclass.superclass.superclass # nil

p 3.14.class # Float
p 3.14.class.superclass # Numeric
p 3.14.class.superclass.superclass # Object
p 3.14.class.superclass.superclass.superclass # BasicObject
p 3.14.class.superclass.superclass.superclass.superclass # nil

puts

p [1, 2, 3].class # Array
p [1, 2, 3].class.superclass # Object
p [1, 2, 3].class.superclass.superclass # BasicObject

puts 

p 5.class.ancestors
p [1, 2, 3].class.ancestors
