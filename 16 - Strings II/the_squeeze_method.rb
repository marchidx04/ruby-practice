sentence = "Thhe aarvark jummped    ovver the fence!"
p sentence
p sentence.squeeze

p sentence.squeeze("a")
p sentence.squeeze(" ")

def custom_squeeze(string)
  final = ""
  chars = string.split("") # string.chars
  chars.each_with_index { |char, index| char == chars[index + 1] ? next : final << char }

  final
end

p custom_squeeze(sentence) == sentence.squeeze # true
