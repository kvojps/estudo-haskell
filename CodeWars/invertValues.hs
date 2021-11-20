invert :: (Ord a, Num a) => [a] -> [a]
invert [] = []
invert (x:xs)
    | x <= 0 = abs x : invert xs
    | x > 0 = (x - x*2) : invert xs