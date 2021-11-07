exponenciacao :: (Eq t, Num t, Num p) => p -> t -> p
exponenciacao _ 0 = 1
exponenciacao num rep = num * exponenciacao num (rep - 1)