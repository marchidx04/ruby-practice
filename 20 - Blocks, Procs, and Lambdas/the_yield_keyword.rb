def pass_control
  puts "This is inside the method!"
  yield
  puts "Now I'm back inside the method"
  yield
end

pass_control { puts "Now I'm inside the block!!!!!" }

pass_control do
  puts "This is line 1 of my block!"
  puts"Yay, still inside the block!"
end

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome" }