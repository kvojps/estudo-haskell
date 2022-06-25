abss :: (Num a, Ord a) => a -> a
abss n = if n < 0 then (-n) else n