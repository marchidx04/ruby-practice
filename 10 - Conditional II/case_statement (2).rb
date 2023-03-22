def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce! That's delicious!"
  when "Sushi"
    "Great choice! My favorite food"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination"
  when "Tofu", "Brussel Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food"
  end
end

p rate_my_food("Tofu")
p rate_my_food("Sushi")

# def calculate_school_grade(grade)
#   case grade
#   when 90..100
#     "A"
#   when 80..89
#     "B"
#   when 70..79
#     "C"
#   when 60..69
#     "D"
#   else
#     "F"
#   end
# end

def calculate_school_grade(grade)
  case grade
  when 90..1000 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p calculate_school_grade(95) # A
p calculate_school_grade(87) # B
p calculate_school_grade(10) # F