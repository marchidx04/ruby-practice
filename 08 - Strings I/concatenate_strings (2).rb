first_name = "Harry "
last_name = "Potter"

# first_name += last_name
p first_name.concat(last_name) # "Harry Potter"

p first_name << last_name << " Wizard" # "Harry PotterPotter Wizard"

# ---------------------------------------------------
first_name = "Harry "
last_name = "Potter"

p last_name.prepend(first_name) # "Harry Potter"
p last_name # "Harry Potter"