somador :: IO ()
somador = do
    putStr "Quantos números? "
    qtd <- readLn :: IO Int
    resultado <- somar 0 qtd
    print resultado
    
somar :: Int -> Int -> IO Int
somar parc 0 = return parc
somar parc n = do
    val <- readLn :: IO Int
    somar (parc + val) (n-1)