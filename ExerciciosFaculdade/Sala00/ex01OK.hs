saoIguais :: (Eq a, Num p) => a -> a -> a -> p
saoIguais a b c 
    |(a == b) && (a == c)  = 3
    |((a /= b) && (a /= c) && (b/=c)) = 0  
    |otherwise = 2