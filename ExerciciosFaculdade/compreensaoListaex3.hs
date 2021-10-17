grid :: Int -> Int -> [(Int,Int)]
grid x y = [(x',y') | x' <- [0..x], y' <- [0..y]]

--TODO quadrado :: Int -> Int -> [(Int, Int)]
