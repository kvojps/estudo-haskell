ehMaior :: Ord a => a -> a -> a -> a
ehMaior x y z 
    | x > y && x > z = x
    | y > z = y
    | otherwise = z

main :: IO()
main = do
    linha <- getLine
    let (x:y:z:_) = map(read :: String -> Int) $ words linha
    let maiorNumero = ehMaior x y z
    putStrLn $ show maiorNumero ++ " eh o maior"