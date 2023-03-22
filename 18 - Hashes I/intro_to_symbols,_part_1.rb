p :name

# Symbol is like a lightweight string
# It's kind of a more light version of a string
# And waht I eman by that is it doesn't include as many methods as a string does.
p :name.class # Symbol

p :name.methods.length # 87
p "name".methods.length # 183

person = {
  :name => "Boris",
  :age => 25,
  :handsome => true,
  :languages => ["Ruby", "Python", "JavaScript"]
}

p person[:age]
