"Hello world".each_char { |char| puts char }

name = "Boris"

p name.split("")
p name.chars

p name.chars.each { |letter| puts "#{letter} is awesome!" }