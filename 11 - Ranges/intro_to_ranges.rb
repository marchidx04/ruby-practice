nums = 90..150

p nums # 90..150
puts nums # 90..150

p nums.class # Range

p nums.first # 90
p nums.last # 150

p nums.first(4) # [90, 91, 92, 93]
p nums.last(4) # [147, 148, 149, 150]

nums2 = 90...150

p nums2.last # 150
p nums2.last(1) # [149]