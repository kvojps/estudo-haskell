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