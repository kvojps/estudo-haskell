map2 :: (a -> b) -> [a] -> [b]
map2 f xs = [f x | x <- xs]

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p xs = [x | x <- xs, p x]

somaQuadPares :: [Int] -> Int
somaQuadPares ns = sum (map (^ 2) (filter even ns))

soma :: Num a => [a] -> a
soma = foldr (+) 0
-- Vai da sua escolha declarar a lista ou não
-- alternativamente: soma xs = foldr (+) 0 xs

produto :: Num a => [a] -> a
produto = foldr (*) 1
-- alternativamente: produto xs = foldr (*) 1 xs

ou :: [Bool] -> Bool
ou = foldr (||) False
-- alternativamente: ou xs = foldr (||) False xs

e :: [Bool] -> Bool
e = foldr (&&) True
-- alternativamente: e xs = foldr (&&) True xs

foldl2 :: (a -> b -> a) -> a -> [b] -> a
foldl2 f v [] = v
foldl2 f v (x:xs) = foldl2 f (f v x) xs