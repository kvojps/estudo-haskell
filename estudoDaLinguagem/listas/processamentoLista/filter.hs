-- A função filter seleciona elementos de uma lista a partir de uma condição.
filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p xs = [x | x <- xs, p x]
