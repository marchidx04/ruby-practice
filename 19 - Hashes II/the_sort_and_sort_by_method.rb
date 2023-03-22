pokemon = {
  squirtle: "Water",
  bulbasaur: "Grass",
  charizard: "Fire"
}

p pokemon.sort

p pokemon.sort_by { |pokemon, type| type }