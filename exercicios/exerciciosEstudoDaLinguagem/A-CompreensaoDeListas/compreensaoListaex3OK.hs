grid :: Int -> Int -> [(Int,Int)]
grid x y = [(x',y') | x' <- [0..x], y' <- [0..y]]

quadrado :: Int -> [(Int, Int)]
quadrado n = [(x,y) |(x,y) <- grid n n , x/= y] 
--Resolvido