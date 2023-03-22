class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def self.counter
    @@thingamajig_counter
  end

  def initialize
    super
    @@thingamajig_counter += 1
  end
end


a = Widget.new
b = Widget.new
c = Widget.new

p Widget.counter
p Product.counter # super 없으면 0, 있으면 3
p Thingamajig.counter # 0

d = Thingamajig.new

p Widget.counter # 3
p Product.counter # 4
p Thingamajig.counter # 1