

-- A função filter seleciona elementos de uma lista a partir de uma condição.
filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p xs = [x | x <- xs, p x]

-- Unindo map e filter
somaQuadPares :: [Int] -> Int
somaQuadPares ns = sum (map (^2) (filter even ns))

-- Existem mais funções para processamento de listas como :
-- all, any, takeWhile, dropWhile

-- A função foldr
soma :: Num p => [p] -> p
soma [] = 0
soma (x:xs) = x + soma xs

soma2 :: Num a => [a] -> a
soma2 = foldr (+) 0
-- alternativamente: soma xs = foldr (+) 0 xs

foldr2 :: (a -> b -> b) -> b -> [a] -> b
foldr2 f v [] = v
foldr2 f v (x:xs) = f x (foldr f v xs)

--ainda nao entendi
lengthFoldr :: [a] -> Int
lengthFoldr = foldr (\_ n -> 1 + n) 0

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
