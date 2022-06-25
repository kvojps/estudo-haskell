mult :: (Num a1, Num a2, Ord a2, Ord a1) => a2 -> a1 -> a2
mult _ 0 = 0
mult 0 _ = 0
mult x y 
    | x < 0 && y < 0 = mult (abs x) (abs y)
    | y < 0 = (-1) * mult x (abs y)
    | otherwise = x + mult x (y - 1) 