p [1, 1, 2, 3, 3, 3, 3, 4, 5].-([2, 3]) # [1, 1, 4, 5]

def custom_subtraction(arr1, arr2)
  final = []
  arr1.each { |value| final << value unless arr2.include?(value) }
  final
end

p custom_subtraction([1, 1, 1, 2, 3, 3, 3, 4, 5], [2, 3]) # [1, 1, 1, 4, 5]
