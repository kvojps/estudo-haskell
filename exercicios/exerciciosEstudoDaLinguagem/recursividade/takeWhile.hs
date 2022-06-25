takeWhile2 :: (a -> Bool) -> [a] -> [a]
takeWhile2 _ [] = []
takeWhile2 p (x:xs) 
    | p x = x : takeWhile2 p xs
    | otherwise = []