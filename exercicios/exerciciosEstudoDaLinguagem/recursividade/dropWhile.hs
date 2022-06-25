dropWhile2 :: (a -> Bool) -> [a] -> [a]
dropWhile2 _ [] = []
dropWhile2 p (x:xs)
    | p x = dropWhile2 p xs
    | otherwise = x:xs 
