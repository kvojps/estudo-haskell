isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = condition1 && condition2 && condition3
                   where
                       condition1 = abs(b-c) < a && a < (b + c)
                       condition2 = abs(b-c) < a && a < (b + c)
                       condition3 = abs(b-c) < a && a < (b + c)