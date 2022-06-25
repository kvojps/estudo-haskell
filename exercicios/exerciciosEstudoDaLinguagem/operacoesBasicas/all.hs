all2 :: (a -> Bool) -> [a] -> Bool
all2 p = and . map p