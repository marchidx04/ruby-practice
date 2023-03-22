fruit_prices = { banana: 1.05 }

p fruit_prices[:orange] # nil

fruit_prices = Hash.new("Not Found")

fruit_prices[:banana] = 1.05

p fruit_prices # { :banana => 1.05 }
p fruit_prices[:mushroom] # Not Found


fruit_prices.default = "Whoops! That doesn't exist here!"

p fruit_prices[:steak]
p fruit_prices[:celery]