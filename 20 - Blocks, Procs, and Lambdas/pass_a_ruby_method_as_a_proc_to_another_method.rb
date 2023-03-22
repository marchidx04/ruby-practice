p ["1", "2", "3"].map { |number| number.to_i }

p ["1", "2", "3"].map(&:to_i)
p [10, 14, 25].map(&:to_s)

p [1, 2, 3, 4, 5].select { |number| number.even? } # [2, 4]
p [1, 2, 3, 4, 5].select(&:even?)

p [1, 2, 3, 4, 5].reject { |number| number.odd? }
p [1, 2, 3, 4, 5].reject(&:odd?)

def talk_about(name, &myprc)
  puts "Let me tell you about #{name}."

  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt"
end

talk_about("Boris", &good_things)