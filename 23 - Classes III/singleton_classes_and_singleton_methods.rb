class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

bob = Player.new
boris = Player.new

def boris.play_game
  "Winner!"
end

p boris.play_game
# p bob.cheat # NoMethodError

p boris.singleton_methods # [:play_game]
p bob.singleton_methods # []

p boris.singleton_class
p bob.singleton_class