channels = ['CBS', 'FOX', 'NBC', 'ESPN', 'UPN']

p channels.values_at(0) # ['CBS']
p channels.values_at(0, 2, 4) # ['CBS', 'NBS', 'UPN']
p channels.values_at(0, 100, 4) # ['CBS', nil, 'UPN']
p channels.values_at(1, -1) # ['FOX', 'UPN']
