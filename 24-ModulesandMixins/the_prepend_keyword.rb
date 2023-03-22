module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore"
  end
end

class Supermarket
  include Purchaseable
end

class CornerMart < Supermarket
  prepend Purchaseable

  def purchase(item)
    "Hi! #{item}"
  end
end

p Bookstore.ancestors

bn = Bookstore.new
p bn.purchase("1984")

p CornerMart.ancestors # [Purchaseable, CornerMart, Supermarket]
p CornerMart.new.purchase("Book!")
