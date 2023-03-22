names = ["Bo", "Moe", "Joe"]
registrations = [true, false, false]

p names.zip(registrations)

p [1, 2, 3].zip([4, 5, 6], ["A", "B", "C"]) # [[1, 4, "A"], [2, 5, "B"], [3, 6, "C"]]

def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index { |elem, idx| final << [arr1[idx], arr2[idx]]}
  final
end

p custom_zip([1, 2, 3], [true, false, true])
