pares :: (Num a, Enum a) => a -> [a]
pares n = [x | x <- [0,2..n]] 

impares :: Integral a => a -> [a]
impares n = [x | x <- [0..n], x `mod` 2 /= 0]

divisores :: Integral a => a -> [a]
divisores n = [x | x <- [1..n], n `mod` x == 0]

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

