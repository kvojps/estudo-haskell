data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

triangleType :: (Ord a, Num a) => a -> a -> a -> TriangleType
triangleType a b c
    | not legal                  = Illegal
    | a == b && b == c           = Equilateral       
    | a /= b && b /= c && a /= c = Scalene     
    | otherwise                  = Isosceles
            where
                legal = and [ all (> 0) [a,b,c], a + b >= c, a + c >= b, b + c >= a ]


