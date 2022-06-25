

mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)
-- mdc 48 18 = mdc 18 (12)
-- mdc 18 12 = mdc 12 (6)
-- mdc 12  6 = mdc  6 (0)
-- mdc 6 0
-- 6

--Recursão em listas
somaLista :: Num a => [a] -> a
somaLista [] = 0
--somaLista xs = head xs + somaLista (tail xs)
somaLista (x:xs) = x + somaLista xs
--somaLista [1,2,3,4,5]
--1 + somaLista [2,3,4,5]
--1 + 2 + somaLista [3,4,5]
--1 + 2 + 3 + somaLista[4,5]
--1 + 2 + 3 + 4 + somaLista[5]
--1 + 2 + 3 + 4 + 5 + somaLista[0]
--1 + 2 +3 + 4 + 5 + 0

produtoLista :: Num a => [a] -> a
produtoLista [] = 1
produtoLista (x : xs) = x * produtoLista xs

qSort :: Ord a => [a] -> [a]
qSort [] = []
qSort (x:xs) = 
    qSort menores ++ [x] ++ qSort maiores
    where
        menores = [e | e <- xs, e < x]
        maiores = [e | e <- xs, e >= x]