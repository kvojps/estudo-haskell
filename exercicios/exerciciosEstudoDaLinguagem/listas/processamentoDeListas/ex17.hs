retornaElemento :: [a] -> Int -> a
retornaElemento xs pos = xs !! pos

retornaElementoRec :: (Eq t, Num t) => t -> [a] -> Maybe a
retornaElementoRec 0 (x:xs) = Just x
retornaElementoRec n (x:xs) = retornaElementoRec (n-1) xs
retornaElementoRec _ [] = Nothing