fat :: (Eq p, Num p, Enum p) => p -> p
fat 0 = 1
fat n = product [1 .. n]

combinacao :: (Fractional p, Eq p, Enum p) => p -> p -> p
combinacao m n = fat m / (fat n * fat (m - n))