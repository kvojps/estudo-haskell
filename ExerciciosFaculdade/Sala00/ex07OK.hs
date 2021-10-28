somaIncluindoLimites :: (Num a, Enum a) => a -> a -> a
somaIncluindoLimites n1 n2 = sum[n1..n2]

somaExcluindoLimites :: (Num a, Enum a) => a -> a -> a
somaExcluindoLimites n1 n2 = sum[n1+1..n2-1]