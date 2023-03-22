p :age.to_s # "age"

p "age".to_sym # :age

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri hallowell",
  posh: "Victoria beckham"
}

p spice_girls.to_a

power_rangers = [[:scary, "Melanie Brown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bunton"], [:ginger, "Geri hallowell"], [:posh, "Victoria beckham"]]

p power_rangers.to_h