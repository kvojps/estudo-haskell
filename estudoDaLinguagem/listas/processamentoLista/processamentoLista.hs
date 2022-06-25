










--Escrevendo reverse usando o foldr
snoc :: a -> [a] -> [a]
snoc x xs = xs ++ [x]

reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 (x:xs) = snoc x (reverse2 xs)
--reverse2 [1,2,3,4]
--reverse2[2,3,4] ++ [1]
--reverse2[3,4] ++ [2] ++ [1]
--reverse2[4] ++ [3] ++ [2] ++ [1]
--[4,3,2,1]

reverseFoldr :: [a] -> [a]
reverseFoldr xs = foldr snoc [] xs

-- A função foldl
lengthFoldl :: [a] -> Int
lengthFoldl = foldl (\n _ -> n + 1) 0

reverseFoldl :: [a] -> [a]
reverseFoldl = foldl (\xs x -> x : xs) []
