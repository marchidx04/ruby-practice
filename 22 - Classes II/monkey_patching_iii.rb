class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
p goosebumps

class Book
  def read
    0.step(@pages, 10) { |page| puts "Reading page #{page == 0 ? page + 1 : page}..." }
    puts "Done! #{@titile} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
animal_farm.read
goosebumps.read


