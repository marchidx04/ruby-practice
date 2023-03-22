p [1, 1, 2, 3, 4, 4, 5, 1].&([1, 2, 3, 1, 9]) # [1, 2, 3] 

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each { |value| final << value if arr2.include?(value) }
  final
end

p custom_intersection([1, 1, 2, 3, 4, 4, 5, 1], [1, 2, 3, 1, 9])