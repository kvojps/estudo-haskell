-- Unindo map e filter
somaQuadPares :: [Int] -> Int
somaQuadPares ns = sum (map (^2) (filter even ns))

-- Existem mais funções para processamento de listas como :
-- all, any, takeWhile, dropWhile