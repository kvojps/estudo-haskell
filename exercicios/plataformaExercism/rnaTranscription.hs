toRNA :: String -> Either Char String
toRNA xs = mapM convert xs
    where
        convert 'A' = Right 'U'
        convert 'C' = Right 'G'
        convert 'G' = Right 'C'
        convert 'T' = Right 'A'
        convert x   = Left x
