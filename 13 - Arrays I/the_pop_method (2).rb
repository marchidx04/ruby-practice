arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p arr

last_item = arr.pop

p arr
p last_item # 10

two_items = arr.pop(2)

p two_items # [8, 9]
p two_items.class # Array

item = arr.pop(1)

p item # [7]