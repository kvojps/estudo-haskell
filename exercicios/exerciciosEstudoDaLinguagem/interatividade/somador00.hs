somador :: IO ()
somador = do
    putStr "Quantos números? "
    qtd <- readLn :: IO Int
    resultado <- sequence [ readLn :: IO Int | _ <- [1 .. qtd]]
    print (sum(resultado))

