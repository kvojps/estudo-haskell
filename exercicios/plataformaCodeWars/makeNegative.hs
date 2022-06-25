makeNegative :: (Num a, Ord a) => a -> a
makeNegative x = if (x < 0) then x else x - (x * 2)