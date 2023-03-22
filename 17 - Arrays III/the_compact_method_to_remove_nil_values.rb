p [1, nil, 2, 3, nil].compact
p [1, nil, 2, 3, nil, 4].compact
p [1, nil, 2, 3, false, 4].compact

def custom_compact(array)
  final = []
  array.each { |elem| final << elem unless elem.nil? }
  final
end

p custom_compact([1, nil, 2, 3, false, 4])