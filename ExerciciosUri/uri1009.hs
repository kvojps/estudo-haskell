import Text.Printf

main :: IO()
main = do
    nomeVendedor' <- getLine
    salarioFixo'  <- getLine
    totalVendas' <-  getLine
    let nomeVendedor = read nomeVendedor' :: String
    let salarioFixo = read salarioFixo' :: Double
    let totalVendas = read totalVendas' :: Double
    let comissao = 0.15 * totalVendas
    let salarioTotal = salarioFixo + comissao
    putStrLn $ printf"TOTAL = R$ %.2f" salarioTotal
