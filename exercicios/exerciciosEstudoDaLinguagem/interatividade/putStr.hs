import System.IO 

meuPutStr :: String -> IO ()
meuPutStr [] = return ()
meuPustStr cs = sequence_ [putChar c | c <- cs]