encontrarMultiplosRange :: Integral a => a -> a ->a -> [a]
encontrarMultiplosRange inicio fim num = 
    [x | x <- [inicio..fim], x `mod` num == 0 && x >= num]