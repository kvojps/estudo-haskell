main :: IO ()
main = do
    a' <- getLine
    b' <- getLine
    let a = read a' :: Int
    let b = read b' :: Int
    
    let produto = a * b
    putStrLn $ "PROD = " ++ show produto
