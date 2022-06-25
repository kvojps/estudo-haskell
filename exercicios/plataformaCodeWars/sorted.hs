import Data.List

isSortedAndHow :: [Integer] -> String
isSortedAndHow lst 
    | lst == sort lst = "yes, ascending"
    | lst == reverse (sort lst) = "yes, descending"
    | otherwise = "no"