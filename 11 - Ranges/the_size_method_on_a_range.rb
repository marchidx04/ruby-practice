numbers = 143..769

p numbers.size # 627

# ndefined method `length' for 143..769:Range (NoMethodError)
# p numbers.length

numbers = 143...769
p numbers.size # 626