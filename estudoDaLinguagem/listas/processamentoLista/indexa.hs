indexa :: [a] -> Int -> a
indexa xs i = head(drop i xs)