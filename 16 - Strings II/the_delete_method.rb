puts "Hello world".delete("l") # Heo word
puts "Hello world".delete("ld") # Heo wor
puts "Hello world".delete("h") # Hello world

def custom_delete(string, delete_characters)
  final = ""
  string.chars.each { |char| delete_characters.include?(char) ? final << string : next }
  final
end

def custom_delete(string, delete_characters)
  final = ""
  string.each_char { |char| delete_characters.include?(char) ? final << string : next }
  final
end

p custom_delete("Hello world", "H")