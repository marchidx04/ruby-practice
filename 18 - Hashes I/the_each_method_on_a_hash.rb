capitals = {
  alabama: "Montgomery",
  alaska: "Juneau",
  arizona: "Phoenix",
  arkansas: "Little Rock"
}

capitals.each do |guess|
  p guess
  p guess.class
end

capitals.each do |state, capital|
  p capital
end