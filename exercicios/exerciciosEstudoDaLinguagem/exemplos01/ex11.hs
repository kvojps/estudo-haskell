sequencia :: (Eq t, Floating p, Num t) => t -> p
sequencia n
        | n == 1 = sqrt 6
        | otherwise = sqrt (6 + sequencia(n - 1))