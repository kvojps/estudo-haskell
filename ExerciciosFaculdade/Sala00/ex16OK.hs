inserirPosicao :: [Int] -> Int -> Int -> [Int]
inserirPosicao xs pos elemento =
    (take pos xs) ++ [elemento] ++ (drop pos xs) 