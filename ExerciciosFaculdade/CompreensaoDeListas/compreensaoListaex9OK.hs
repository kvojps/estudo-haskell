produtoListas :: Num a => [a] -> [a] -> a
produtoListas xs ys = sum([k*v | (k,v) <- zip xs ys])
--Resolvido