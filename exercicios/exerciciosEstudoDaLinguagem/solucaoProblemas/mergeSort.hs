mergeSort :: Ord a => [a] -> [a] -> [a]
mergeSort [] ys = ys
mergeSort xs [] = xs
mergeSort (x:xs) (y:ys) 
    | x <= y = x : mergeSort xs (y :ys)
    | otherwise = mergeSort (x:xs) ys
