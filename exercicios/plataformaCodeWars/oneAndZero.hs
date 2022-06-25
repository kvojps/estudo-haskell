toNumber :: Num p => [p] -> p
toNumber [] = 0
toNumber (x:xs) = x * 2 ^ (length(x:xs)-1) + toNumber xs