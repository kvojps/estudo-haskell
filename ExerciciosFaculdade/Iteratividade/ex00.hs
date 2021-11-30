putStr2     :: String -> IO ()
putStr2 s   =  mapM_2 putChar s

mapM_2            :: Monad m => (a -> m b) -> [a] -> m ()
mapM_2 f as       =  sequence_2 (map f as)

sequence_2      :: Monad m => [m a] -> m () 
sequence_2      =  foldr (>>) (return ())