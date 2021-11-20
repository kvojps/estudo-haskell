opposite :: (Num a, Ord a) => a -> a
opposite x
    | x < 0 = abs(x)
    | otherwise = x - (x * 2)