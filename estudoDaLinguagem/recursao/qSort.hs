qSort :: Ord a => [a] -> [a]
qSort [] = []
qSort (x:xs) = 
    qSort menores ++ [x] ++ qSort maiores
    where
        menores = [e | e <- xs, e < x]
        maiores = [e | e <- xs, e >= x]