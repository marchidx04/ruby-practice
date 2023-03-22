letters_range = 'A'..'T'
p letters_range # 'A'..'T'
p letters_range.to_a # ['A', 'B', ... , 'T]
p letters_range.class # Range
p letters_range.to_a.class # Array

numbers_range = 10..-10
p numbers_range.to_a # []

numbers_range = -10..10
p numbers_range.to_a # [-10, ... , 10]
p numbers_range.to_a[10..15]  # [0, 1, 2, 3, 4, 5]