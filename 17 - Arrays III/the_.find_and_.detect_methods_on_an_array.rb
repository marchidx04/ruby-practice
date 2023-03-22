words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.select { |word| word.length > 8 } # ["dictionary", "refrigerator", "microwave"]
p words.find { |word| word.length > 8 } # "dictionary"
p words.detect { |word| word.length > 8 } # "dictionary"

lottery = [4, 8, 15, 16, 23, 42]
result = lottery.find do |number|
  number.odd?
end
p result # 15

result = lottery.detect { |num| num.odd? } # 15
p result