getMiddle :: String -> String
getMiddle xs
    | (length xs `mod` 2 == 0) = [xs !! (length xs `div` 2 - 1)] ++ [xs !! (length xs `div` 2 )]
    | otherwise = [xs !! (length xs `div` 2)]