divisores :: Integral a => a -> [a]
divisores n = [x | x <- [1..n], n `mod` x == 0]

primo :: Integral a => a -> Bool
primo x = divisores x == [1,x]

primos :: Int -> [Int]
primos n = [x | x <- [2 .. n], primo x]