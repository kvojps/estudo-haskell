buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']
--buscar ‘a’ [(‘a’, 1), (‘b’, 2), (‘c’, 3), (‘a’, 4)]
--[1, 4]

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x (zip xs [0 ..])
--Resolvido
