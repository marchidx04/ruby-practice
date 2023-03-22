menu = {
  burger: 3.99,
  taco: 5.96,
  chips: 0.5
}

p menu[:burger] # 3.99
p menu["burger"] # nil

p menu.fetch(:burger) # 3.99
p menu.fetch(:salad, "Not Found") # "Not Found"