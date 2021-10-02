--Reescrita da função signum do arquivo de condicionais.hs; 
signumV2 :: (Num a, Ord a) => a -> a
signumV2 n
    | n < 0 = -1
    | n == 0 = 0
    | otherwise = 1

--Reescrita da função de raízes de grau 2 presente no arquivo condicionais.hs;
--error interrompe a execução do programa;
raizes2Grau :: (Ord a, Floating a) => a -> a -> a -> (a,a)
raizes2Grau a b c = 
    if delta < 0 then error "Delta negativo" else (x1, x2)
    where
        x1 = ((-b) + sqDelta) / (2*a)
        x2 = ((-b) - sqDelta) / (2*a)
        sqDelta = sqrt delta
        delta = b^(2 :: Int) - 4 * a * c
