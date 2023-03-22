p nil.to_i # 0

inst_section = {
  'cello' => 'string'
}
p inst_section['drum'] # nil

histrogram = Hash.new(0) # 기본값은 0이다.
p histrogram['ruby'] # 0
histrogram['ruby']  = histrogram['ruby'] + 1
p histrogram['ruby'] # 1

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

b1 = 