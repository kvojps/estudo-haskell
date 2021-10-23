import Text.Printf

main :: IO()
main = do
    distanciaTotal' <- getLine
    combustivelGasto' <- getLine
    let distanciaTotal = read distanciaTotal' :: Double
    let combustivelGasto = read combustivelGasto' :: Double
    let consumoMedio = distanciaTotal / combustivelGasto
    putStrLn $ printf "%.3f km/l" consumoMedio