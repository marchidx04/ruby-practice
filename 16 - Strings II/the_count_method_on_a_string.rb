puts "Hello world".count("l") # 3
puts "Hello world".count("lo") # 5
puts "Hello world".count("lw") # 4
puts "Hello world".count("low") # 6

def custom_count(string, search_characters)
  count = 0
  string.each_char do |char|
    count += 1 if search_characters.include?(char)
  end
  count
end

puts custom_count("Hello world", "lo") # 5