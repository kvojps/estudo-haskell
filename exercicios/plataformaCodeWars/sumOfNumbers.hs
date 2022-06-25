getSum :: Int -> Int -> Int
getSum x y 
    | x < y = sum[x..y]
    | otherwise = sum[y..x] 