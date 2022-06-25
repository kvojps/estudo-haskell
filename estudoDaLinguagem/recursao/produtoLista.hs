produtoLista :: Num a => [a] -> a
produtoLista [] = 1
produtoLista (x : xs) = x * produtoLista xs