class Employee
  attr_accessor :age
  attr_accessor :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

boris = Employee.new("Boris", 25)
puts boris.introduce

class Manager < Employee

end

class Worker < Employee

end


