-- A função map aplica uma outra função a todos os elementos de uma lista.
map2 :: (a -> b) -> [a] -> [b]
map2 f xs = [f x | x <- xs]