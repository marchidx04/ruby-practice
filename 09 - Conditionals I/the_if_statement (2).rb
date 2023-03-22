if 2 < 5
  puts "That match statement is true!"
end

password = "topscrete"
if password == "topscrete"
  puts "Congrats, you've logged into our system!"
end

word = "kangaroo"
if word.length == 8
  puts "That word has #{word.length} letters!"
end

animal = "zebra"

if animal.include?("eb")
  puts "Yup, your word has eb in it"
end

if 5.odd?
  puts "That number is odd!"
end