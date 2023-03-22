class Employee
  attr_accessor :age
  attr_accessor :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank    
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    result = super
    result += " I'm also a manager"
    result
  end
end

# bob = Manager.new("Bob", 48) # ArgumentError
bob = Manager.new("Bob", 48, "A")
dan = Worker.new("Dan",  24)

p bob
p bob.introduce