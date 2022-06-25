eqGrau2 :: (Ord b, Floating b) => b -> b -> b -> Maybe (b, b)
eqGrau2 a b c = if (delta > 0) then Just(x,y) else Nothing
    where
        delta = b * b - 4 * a * c
        x = (-b / (2*a)) + sqrt delta / (2 * a)
        y = (-b / (2*a)) - sqrt delta / (2 * a)