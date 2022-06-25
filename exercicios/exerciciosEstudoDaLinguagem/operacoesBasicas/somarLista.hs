(+++) :: Int -> Int -> Int
a +++ b = (a + b) `div` 10

sumList :: [Int] -> Int
sumList = foldl (+) 0