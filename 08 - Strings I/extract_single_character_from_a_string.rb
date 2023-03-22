story = "Once upon a time in a land far, far away"

p story.length

p story[3] # e

p story[story.length - 1] # y

p story[-3] # w
p story.slice(-3) # w
p story.slice(-3, story.length - 1) # way

p story[-50] # nil
p story[50] # nil
p story.slice(50) # nil
