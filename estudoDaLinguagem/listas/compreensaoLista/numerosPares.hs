numerosPares :: (Num a, Enum a) => a -> [a]
numerosPares n = [x | x <- [0,2..n]] 