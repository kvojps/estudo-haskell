fatoresExcluindoProprioNumero :: Integral a => a -> [a]
fatoresExcluindoProprioNumero n = [x | x <- [1..n-1], n `mod` x == 0]

ehPerfeito :: Integral a => a -> [a]
ehPerfeito n =  [x | x <- [1..n], sum(fatoresExcluindoProprioNumero x) == x]
--resolvido