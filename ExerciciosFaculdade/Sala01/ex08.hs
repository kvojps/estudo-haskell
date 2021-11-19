dec2int :: [Int] -> Int
dec2int = foldl (\v i -> v * 10 + i) 0

--foldl (#) v [a,b,c]
--(((v # a)b)c)