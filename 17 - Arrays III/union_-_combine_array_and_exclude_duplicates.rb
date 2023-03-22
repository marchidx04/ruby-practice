p [1, 1, 2, 3, 3] | [3, 4, 4, 5] | [4, 6, 5, 7] # [1, 2, 3, 4, 5, 6, 7]

def custom_union(arr1, arr2)
  # dup 하지 않으면 arr1에도 영향이 감
  arr1.dup.concat(arr2).uniq
end

p custom_union([1, 2, 2, 3, 1], [3, 4, 4, 1, 2])