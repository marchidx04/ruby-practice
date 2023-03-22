module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  include Announcer
end

class Cat
  extend Announcer
end

p Dog.new.who_am_i
p Cat.who_am_i
