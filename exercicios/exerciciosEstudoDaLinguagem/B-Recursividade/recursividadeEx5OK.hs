and2 :: [Bool] -> Bool
and2 [] = True
and2 (x:xs) = x && and2 xs

concat2 :: [[a]] -> [a]
concat2 [] = []
concat2 (x:xs) = x ++ concat2 xs
 
replicate2 :: (Eq t, Num t) => a -> t -> [a]
replicate2 _ 0 = []
replicate2 valor rep = valor : replicate2 valor (rep - 1)

(!!!) :: Eq p => [p] -> Int -> p
(!!!) (x:xs) pos 
    | (x /= (x:xs) !! pos) = (!!!) xs (pos-1)
    | otherwise = x

elem2 :: Eq t => [t] -> t -> Bool    
elem2 [] _ = False
elem2 (x:xs) item 
    | (x /= item) = elem2 xs item
    | otherwise = True

--Resolvido