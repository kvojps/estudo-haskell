-- A função foldr
soma :: Num p => [p] -> p
soma [] = 0
soma (x:xs) = x + soma xs

soma2 :: Num a => [a] -> a
soma2 = foldr (+) 0
-- alternativamente: soma xs = foldr (+) 0 xs