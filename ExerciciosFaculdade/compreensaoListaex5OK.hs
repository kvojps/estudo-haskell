positivos :: (Ord a1, Ord a2, Ord a3, Num a1, Num a2, Num a3) => a1 -> a2-> a3 -> Bool
positivos x y z = x > 0 && y > 0 && z >0

ehPitagoreanaPositiva :: (Num a3, Ord a3) => a3 -> a3 -> a3 -> Bool
ehPitagoreanaPositiva x y z = (x * x) + (y * y) == z * z && positivos x y z

pitTag :: Int -> [(Int, Int, Int)]
pitTag n = [(x,y,z) | x <- [0..n], y <- [0..n], z <- [0..n], ehPitagoreanaPositiva x y z]
--Resolvido