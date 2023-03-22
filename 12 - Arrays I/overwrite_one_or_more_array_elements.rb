fruits = ['Apple', 'Orange', 'Grape', 'Banana']

fruits[1] = 'Watermelon'

p fruits # ['Apple', 'Watermelon', 'Grape', 'Banana']

fruits[-1] = 'Bananas'
p fruits # ['Apple', 'Orange', 'Grape', 'Bananasd']

fruits[10] = 'Raspberry'
p fruits # ['Apple', 'Orange', 'Grape', 'Bananasd'. nil, nil, nil, nil, nil, nil, 'Raspberry']

fruits[3, 2] = ['Canteloupe', 'Dragonfruit']
p fruits # ['Apple', 'Orange', 'Grape', 'Canteloupe'. 'Dragonefruit, nil, nil, nil, nil, 'Raspberry']

fruits[0..2] = ['Blackberry']
p fruits # ['Blackberry', 'Canteloupe'. 'Dragonefruit, nil, nil, nil, nil, 'Raspberry']
