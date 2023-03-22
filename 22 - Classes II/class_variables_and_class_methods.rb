class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description
    "Hi ther, I'm the blueprint fort Bicycles! Use me to create a bicycle"
  end

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end
end

p Bicycle.description
p Bicycle.count # 0

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count # 3
