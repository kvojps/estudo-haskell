numerosImpares :: Integral a => a -> [a]
numerosImpares n = [x | x <- [0..n], x `mod` 2 /= 0]