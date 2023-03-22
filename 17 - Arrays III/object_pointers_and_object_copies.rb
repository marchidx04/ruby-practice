a = [1, 2, 3]
b = [1, 2, 3]
c = [1, 2, 3]
d = a
e = a.dup

p a == b
p a.object_id # 60
p b.object_id # 80
p c.object_id # 100
p a.object_id == d.object_id # true
a.push(4)
p d # [1, 2, 3, 4]
p e.object_id # 120
p e # [1, 2, 3]
