def pass_control_on_condition
  puts "Inside the method"
  yield if block_given?
  puts "Back inside the method"
end

p pass_control_on_condition
p pass_control_on_condition { puts "Inside the block" }