--Reescrita da função signum, do arquivo de condicionais, de uma maneira mais concisa !
signumV2 :: (Num a, Ord a) => a -> a
signumV2 n
    | n < 0 = -1
    | n == 0 = 0
    | otherwise = 1