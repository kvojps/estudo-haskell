dic_10 :: [(Integer, [Char])]
dic_10 = [(0,"zero"),(1,"um"),(2,"dois"),(3,"tres"),(4,"quatro"),(5,"cinco"),(6,"seis"),(7,"sete"),(8,"oito"),(9,"nove")]

converter :: [Integer] -> [[Char]]
converter  = map (consultar dic_10)

consultar :: Eq t => [(t, p)] -> t -> p
consultar ((c,v):xs) p = if p == c then v else consultar  xs p