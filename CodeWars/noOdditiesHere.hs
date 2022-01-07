noOdds :: Integral n => [n] -> [n]
noOdds xs = [x | x <- xs, x `mod` 2 == 0]
