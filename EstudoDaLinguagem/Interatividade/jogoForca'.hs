import System.IO

main :: IO ()
main = do hSetBuffering stdout NoBuffering
          putStrLn "Escreva uma palavra: "
          palavra <- obterLinhaSecreta
          putStrLn "Tente adivinhar: "
          jogar palavra (replicate (length palavra) '-')

obterLinhaSecreta :: IO String
obterLinhaSecreta = do x <- obterChar
                       if x == '\n' then
                           do putChar x
                              return []
                       else
                           do putChar '-'
                              xs <- obterLinhaSecreta
                              return (x:xs)

obterChar:: IO Char
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x

jogar :: String -> String -> IO ()
jogar palavra parcial = do  putStr "? "
                            tentativa <- getChar
                            putChar '\n'
                            let novaParcial = encontrar palavra parcial tentativa
                            if novaParcial == palavra then do 
                                putStrLn ("A palavra é " ++ novaParcial ++ ".")
                                putStrLn ("Muito bem !")
                            else do
                                putStrLn novaParcial
                                jogar palavra novaParcial

        
encontrar :: String -> String -> Char -> String
encontrar xs ys z = [if x == z then x else y | (x, y) <- zip xs ys]
