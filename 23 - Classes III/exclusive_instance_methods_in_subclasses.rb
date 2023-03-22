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
  def yell
    "Who's the boss? I'm the boss!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift_at #{time}"
  end
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Dan",  24)

p bob.yell
p dan.clock_in("12:00 PM")