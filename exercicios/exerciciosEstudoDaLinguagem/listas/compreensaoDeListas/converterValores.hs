dic10 :: [(Int, [Char])]
dic10 = [(0,"zero"),(1,"um"),(2,"dois"),(3,"três"),(4,"quatro"),(5,"cinco"),(6,"seis"),(7,"sete"),(8,"oito"),(9,"nove"),(10,"dez")]

converter :: [Int] -> [String]
converter xs = [snd y | x <- xs, y <- dic10, x == fst y]