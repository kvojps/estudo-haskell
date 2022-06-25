repete :: Int -> [[Int]]
repete n = [replicate x x | x <- reverse [1 .. n]]