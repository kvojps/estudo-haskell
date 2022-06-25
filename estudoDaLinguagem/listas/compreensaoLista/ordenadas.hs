pares :: [a] -> [(a,a)]
pares xs = zip xs (tail xs)
--zip [1,2,3,4,5] [2,3,4,5]
--[(1,2),(2,3),(3,4),(4,5)]

ordenada :: Ord a => [a] -> Bool
ordenada xs = and [x <= y | (x,y) <- pares xs]
--[(1,2),(2,3),(3,4),(3,5)]
--and [True, True, True, True]
--True