exemplo :: [(Integer,Integer)]
exemplo = [(x,y) | x <- [1,2], y <- [3,4]]

exemplo2 :: [(Integer,Integer)]
exemplo2 = concat[[(1,y) | y <- [3,4]], [(2,y) | y <- [3,4]]]
--Resolvido