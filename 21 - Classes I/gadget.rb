class Gadget

end

puts Gadget.superclass
puts Gadget.superclass.superclass

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone.class
puts laptop
puts microwave

puts phone.methods.sort

puts phone.is_a?(Gadget) # true
puts phone.is_a?(Object) # true
puts phone.is_a?(BasicObject) # true

puts phone.respond_to?(:class) # true
puts phone.respond_to?(:methods) # true
puts phone.respond_to?(:is_a?) # true
puts phone.respond_to?(:length) # false
