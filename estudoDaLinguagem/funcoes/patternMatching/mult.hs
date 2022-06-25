mult :: (Eq a, Num a) => a -> a -> a
mult 0 _ = 0
mult _ 0 = 0
mult 1 y = y
mult x 1 = x
mult x y = x * y