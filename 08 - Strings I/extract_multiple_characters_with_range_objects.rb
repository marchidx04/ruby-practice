story = "Once upon a time in a land far, far away..."

p story[27..] # "far, far away..."
p story[27..39] # "far, far away"
p story.slice(27..39) # "far, far away"

p story[27...39] # "far, far awa" <- 39번쨰 이전까지
p story.slice(27...39) # "far, far awa" <- 39번쨰 이전까지

p story[32..100] # "far away..."
p story.slice(32..100) # "far away..."
p story.slice(32, 100) # "far away..."

p story[25..-9] # "d far, far"
p story[25..-40] # ""
