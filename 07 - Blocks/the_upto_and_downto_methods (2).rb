5.upto(10) { |count| puts count }
6.downto(1) { |current| puts current }

55.downto(1) do |number|
  puts "#{number} bottles of beer on the wall, #{number} bottles of beer"
  puts "Take one down, pass it around"
  puts "#{number - 1} bottles of beer on the wall"
end
