fact = "I am very handsome."
p fact.index("I") # 0
p fact.index("a") # 2
p fact.index("am") # 2
p fact.index("z") # nil
p fact.index("e") # 6
p fact.index("e", 7) # 17
p fact.rindex("e") # 17

def custom_index(string, substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end

  return nil;
end

p custom_index(fact, "e") # 6
p custom_index(fact, "h") # 10
p custom_index(fact, ";") # 10