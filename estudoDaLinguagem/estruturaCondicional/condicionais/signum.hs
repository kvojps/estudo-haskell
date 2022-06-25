signum :: (Num a, Ord a) => a -> a
signum n = if n < 0
           then -1
           else if n == 0
               then 0
               else 1  