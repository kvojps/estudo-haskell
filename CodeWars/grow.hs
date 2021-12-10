grow :: [Int] -> Int
grow [] = 1
grow (x:xs) = x * grow xs 