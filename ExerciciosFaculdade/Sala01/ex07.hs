map2 :: Foldable t1 => (t2 -> a) -> t1 t2 -> [a]
map2 f xs = foldr (\x y -> f x : y)  [] xs

filter2 :: Foldable t => ([a] -> Bool) -> t [a] -> [a]
filter2 p = foldr (\x y -> if p x then x else y)[]
