animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]

select_results = animals.select { |animal| animal.include?("c") }
rject_results = animals.reject { |animal| animal.include?("c") }
p select_results
p rject_results