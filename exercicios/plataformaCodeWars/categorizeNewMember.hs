data TipoMembro = Open | Senior deriving Show

openOrSenior :: [(Int, Int)] -> [TipoMembro]
openOrSenior [] = []
openOrSenior (x:xs)
    | fst x >= 55 && snd x > 7 = Senior : openOrSenior xs
    | otherwise = Open : openOrSenior xs