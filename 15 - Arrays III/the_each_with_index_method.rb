shirts = ['striped', "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each_with_index do |shirt, i|
  ties.each_with_index do |tie, j|
    puts "OPTION: A #{shirt} shirt and a #{tie} tie. #{i}, #{j}"
  end
end