-- A função foldl
lengthFoldl :: [a] -> Int
lengthFoldl = foldl (\n _ -> n + 1) 0

reverseFoldl :: [a] -> [a]
reverseFoldl = foldl (\xs x -> x : xs) []