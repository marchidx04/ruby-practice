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

class Manager < Employee
  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    "My name is #{name} and I'm a manager! Woo-hoo!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift_at #{time}"
  end
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Dan",  24)

p bob.introduce
p dan.introduce