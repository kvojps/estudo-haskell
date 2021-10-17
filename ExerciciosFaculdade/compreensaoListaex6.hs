fatores :: Integral a => a -> [a]
fatores n = [x | x <- [1..n], n `mod` x == 0]