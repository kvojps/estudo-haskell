isLeapYear :: Int -> Bool
isLeapYear year = (divisibleBy 400) == 0 || ((divisibleBy 4) == 0 && not ((divisibleBy 100) == 0))
    where
        divisibleBy x = mod year x
