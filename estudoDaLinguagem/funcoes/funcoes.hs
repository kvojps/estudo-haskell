

quadrado :: Num a => a -> a
quadrado x = x * x

quadradoMais6Mod9 :: Integral a => a -> a
quadradoMais6Mod9 x = (x + 6) `mod` 9

raizes2Grau :: Floating a => a -> a -> a -> (a,a)
raizes2Grau a b c = (x1, x2)
    where
        x1 = ((-b) + sqDelta) / (2*a)
        x2 = ((-b) - sqDelta) / (2*a)
        sqDelta = sqrt delta
        delta = b^(2 :: Int) - 4 * a * c


