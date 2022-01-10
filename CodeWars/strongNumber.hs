fatorial :: (Eq p, Num p) => p -> p
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

strong :: Int -> [Char]
strong num 
    |(num == sum(map fatorial (numberToList num))) = "STRONG!!!!"
    | otherwise = "Not Strong !!"

numberToList :: Show a => a -> [Int]
numberToList num =  map (read . (:"")) str :: [Int]
    where str = show num 