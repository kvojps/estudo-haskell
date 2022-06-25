all2 :: (a -> Bool) -> [a] -> Bool
all2 p = and . map p

any2 :: (a -> Bool) -> [a] -> Bool
any2 p = or . map p

takeWhile2 :: (a -> Bool) -> [a] -> [a]
takeWhile2 _ [] = []
takeWhile2 p (x:xs) 
    | p x = x : takeWhile2 p xs
    | otherwise = []

dropWhile2 :: (a -> Bool) -> [a] -> [a]
dropWhile2 _ [] = []
dropWhile2 p (x:xs)
    | p x = dropWhile2 p xs
    | otherwise = x:xs 

--Fazer takeWhile e dropWhile com o fold