tuplasListas :: [(Integer,Integer)]
tuplasListas = [(x,y) | x <- [1,2,3], y <- [4,5]]

tuplasListas2 :: [(Integer,Integer)]
tuplasListas2 = [(x,y) | y <- [4,5], x <- [1,2,3]]