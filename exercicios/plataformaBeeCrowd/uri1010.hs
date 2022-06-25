import Text.Printf

main = do
    linha1 <- getLine
    linha2 <- getLine
    let (cod1:n1:valor1:_) = map (read :: String -> Double) $words linha1
    let (cod2:n2:valor2:_) = map (read :: String -> Double) $words linha2
    let total = (n1 * valor1) + (n2 * valor2)

    putStrLn $ printf "VALOR A PAGAR: R$ %.2f" total