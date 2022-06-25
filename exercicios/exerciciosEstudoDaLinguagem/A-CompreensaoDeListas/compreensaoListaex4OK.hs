replicate2 :: Int -> a -> [a]
replicate2 n item = [x | x <- take n (repeat item)]
--Resolvido