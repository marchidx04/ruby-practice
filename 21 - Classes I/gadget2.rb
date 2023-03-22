class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

puts shiny
puts flashy

p shiny.object_id
p flashy.object_id
p shiny == flashy

glossy = shiny
p glossy.object_id
p shiny.object_id
p shiny.object_id == glossy.object_id # true

p shiny == flashy # false
p glossy == flashy # false
