class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Jolly Ranchers")
bodega.add_snack("Slim Jims")
p bodega.snacks

bodega.each { |snack| puts "#{snack} is delicious" }

p bodega.any? { |snack| snack.length > 10 } # true
p bodega.all? { |snack| snack.length > 10 } # false

p bodega.map { |snack| snack.upcase }
p bodega.reject { |snack| snack.upcase.include?("J") } # ["Doritos"]
p bodega.sort
