fatorial :: Num t => t -> t
fatorial n = n * fatorial(n-1)

fatorialSeguro :: Int -> Maybe Int
fatorialSeguro 0 = Just 1
fatorialSeguro n
    | n > 0 = Just (fatorial n)
    | otherwise = Nothing

--Resolvido