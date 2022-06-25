calcularNotas :: Integral a => a -> [a] -> [a]
calcularNotas _ [] = []
calcularNotas valorTotal (x:xs) = valorTotal `div` x : calcularNotas (valorTotal `mod` x) xs

-- 576 `div` 100 : calcularNotas (76) [50,20,10,5,2,1]
-- 5 : 76 `div` 50 : calcularNotas (26) [20,10,5,2,1]
-- 5 : 1 : ... : []

main :: IO()
main = do
    valor' <- getLine
    let valor = read valor' :: Int
    let resultado = (calcularNotas valor [100,50,20,10,5,2,1])
    let valor0 = resultado !! 0
    let valor1 = resultado !! 1
    let valor2 = resultado !! 2
    let valor3 = resultado !! 3
    let valor4 = resultado !! 4
    let valor5 = resultado !! 5
    let valor6 = resultado !! 6
    putStrLn $ show valor
    putStrLn $ show valor0 ++ " nota(s) de R$ 100,00"
    putStrLn $ show valor1 ++ " nota(s) de R$ 50,00"
    putStrLn $ show valor2 ++ " nota(s) de R$ 20,00"
    putStrLn $ show valor3 ++ " nota(s) de R$ 10,00"
    putStrLn $ show valor4 ++ " nota(s) de R$ 5,00"
    putStrLn $ show valor5 ++ " nota(s) de R$ 2,00"
    putStrLn $ show valor6 ++ " nota(s) de R$ 1,00"