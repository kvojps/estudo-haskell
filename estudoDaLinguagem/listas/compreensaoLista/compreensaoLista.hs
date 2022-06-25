





primo :: Integral a => a -> Bool
primo x = divisores x == [1,x]

primos :: Int -> [Int]
primos n = [x | x <- [2 .. n], primo x]

tuplasListas :: [(Integer,Integer)]
tuplasListas = [(x,y) | x <- [1,2,3], y <- [4,5]]

tuplasListas2 :: [(Integer,Integer)]
tuplasListas2 = [(x,y) | y <- [4,5], x <- [1,2,3]]

buscar :: Eq a1 => a1 -> [(a1,a2)] -> [a2]
buscar k xs = [v | (k', v) <- xs, k == k']

concatenarListas :: [a] -> [a] -> [a]
concatenarListas xs ys = concat[xs,ys]

concatenarListaString :: [(Integer, Char)]
concatenarListaString = zip[1,2,3]"ola"

pares :: [a] -> [(a,a)]
pares xs = zip xs (tail xs)
--zip [1,2,3,4,5] [2,3,4,5]
--[(1,2),(2,3),(3,4),(4,5)]

ordenada :: Ord a => [a] -> Bool
ordenada xs = and [x <= y | (x,y) <- pares xs]
--[(1,2),(2,3),(3,4),(3,5)]
--and [True, True, True, True]
--True

--Uma compreensão que substitua cada número ímpar maior que 10 com BANG! e cada número ímpar menor que 10 com BOOM!.
--Se o número não for ímpar, fica fora da lista.
boomBangs :: Integral a => [a] -> [[Char]]
boomBangs xs = [if x > 10 then "BOOM!" else "BANG!" | x <-xs , odd x]