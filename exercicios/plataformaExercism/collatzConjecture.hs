collatz :: Integer -> Maybe Integer
collatz n = conjecture n 0

conjecture :: Integer -> Integer -> Maybe Integer
conjecture n step 
    | n <= 0 = Nothing
    | n == 1 = Just step
    | otherwise = if mod n 2 == 0 then nIsEven else nIsOdd
        where 
            nIsEven = conjecture (div n 2) (step + 1)
            nIsOdd = conjecture (3*n + 1) (step + 1)