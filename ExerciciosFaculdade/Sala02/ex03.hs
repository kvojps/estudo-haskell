mapFilter :: (a -> b) -> [a] -> (a -> Bool) -> [b]
mapFilter f xs filtro = map f (filter filtro xs)
--mapFilter (+1) [1,2,3] (>1)
--[3,4]

compMapFilter :: (t -> a) -> [t] -> (t -> Bool) -> [a]
compMapFilter f xs p = [f x | x <- xs, p x]
--compMapFilter (+1) [1,2,3] (>1)
--[3,4]