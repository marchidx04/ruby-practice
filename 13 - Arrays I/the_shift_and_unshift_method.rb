arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr

extract = arr.shift

p arr
p extract # 1 (Integer)

extract_items = arr.shift(3)

p extract_items # [2, 3, 4]

item = arr.shift(1)

p item # [5] (Array)

arr.unshift(500, 300, 100)

p arr # [500, 300, 100, 6, 7, 8, 9, 10]
