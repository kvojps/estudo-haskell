import Text.Printf

main :: IO()
main = do
    numeroFuncionario' <- getLine
    horasTrabalhadas'  <- getLine
    salarioPorHora'    <- getLine
    let numeroFuncionario = read numeroFuncionario' :: Int
    let horasTrabalhadas = read horasTrabalhadas' :: Double
    let salarioPorHora = read salarioPorHora' :: Double

    let salarioTotal = horasTrabalhadas * salarioPorHora
    putStrLn $"NUMBER = " ++ show numeroFuncionario
    putStrLn $ printf"SALARY = U$ %.2f" salarioTotal