foldr2 :: (a -> b -> b) -> b -> [a] -> b
foldr2 f v [] = v
foldr2 f v (x:xs) = f x (foldr f v xs)

--ainda nao entendi
lengthFoldr :: [a] -> Int
lengthFoldr = foldr (\_ n -> 1 + n) 0