meuFold :: Eq t1 => (t2 -> t1 -> t2) -> t2 -> [t1] -> t2
meuFold f elementoNeutro xs
    | xs == [] = elementoNeutro
    | otherwise = meuFold f parcial (tail xs)
                    where
                        parcial = f elementoNeutro (head xs)

-- meuFold (*) 1 [1,2,3]
-- meuFold (*) 1 [2,3]
-- meuFold (*) 2 [3]
-- meuFold (*) 6 []
-- 6