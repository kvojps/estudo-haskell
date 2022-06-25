

duasVezes :: (a -> a) -> a -> a
duasVezes f x = f (f x)