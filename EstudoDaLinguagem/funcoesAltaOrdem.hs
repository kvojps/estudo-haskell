soma :: Int -> Int -> Int
soma x y = x + y
--soma = \x -> (\y -> x + y)

duasVezes :: (a -> a) -> a -> a
duasVezes f x = f (f x)

