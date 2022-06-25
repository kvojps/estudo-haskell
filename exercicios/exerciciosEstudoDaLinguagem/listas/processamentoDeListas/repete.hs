repete :: Int -> [[Int]]
repete n = [replicate x x | x <- reverse [1 .. n]]

repeteConcat :: Int -> [Int]
repeteConcat = concat . repete

repete2 :: Int -> [[Int]]
repete2 n = replicate n n : repete (n-1)