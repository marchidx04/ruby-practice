sentence = "Once upon a time in a land far far away"

def word_count(string)
  # Return a hash where the keys will represent
  # the words in the string and the values will
  # represent how many times that key occurs
  final = {}
  string.split(" ").each { |word| final.key?(word) ? final[word] += 1 : final[word] = 1 }
  final
end

def word_count(string)
  words = string.split(" ")
  count = Hash.new(0)

  words.each { |word| count[word] += 1 }
  count
end

p word_count(sentence)