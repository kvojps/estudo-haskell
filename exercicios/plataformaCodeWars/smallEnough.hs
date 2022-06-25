smallEnough :: Ord t => [t] -> t -> Bool
smallEnough [] _ = True
smallEnough (x:xs) lim | (x <= lim) = smallEnough xs lim
                       | otherwise = False