replicate2 :: (Eq t, Num t) => a -> t -> [a]
replicate2 _ 0 = []
replicate2 valor rep = valor : replicate2 valor (rep - 1)