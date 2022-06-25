



--Reescrita da função de raízes de grau 2 presente no arquivo funcoes.hs;
raizes2Grau :: (Ord a, Floating a) => a -> a -> a -> (a,a)
raizes2Grau a b c = (x1, x2)
    where
        x1 = if delta >= 0 then ((-b) + sqDelta) / (2*a) else 0
        x2 = if delta >= 0 then ((-b) - sqDelta) / (2*a) else 0
        sqDelta = sqrt delta
        delta = b^(2 :: Int) - 4 * a * c