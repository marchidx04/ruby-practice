=begin
A local variable is simply a variable that is declared within a method body,
and a local variable is only going to exist as long as the method is executing.
It is within the methods execution environment.
=end

def film_movie
  action_star = "Arnold Schwarzenegger"
  puts action_star
end

film_movie # Arnold Schwarzenegger


# undefined local variable or method `action_star' for main:Object (NameError)
# puts action_star

five = 5

# Ruby does not operate like other languages,
# so this is a totally separate execution enviroment.
# five = 10을 지우면 NameError 발생
def change_five
  five = 10
  puts five
end

# because it is kind of local or limited to this specific enviroment of the change_five method
change_five # 10
puts five # 5

