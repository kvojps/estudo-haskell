any2 :: (a -> Bool) -> [a] -> Bool
any2 p = or . map p
