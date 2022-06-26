tempToC :: Integer -> Float
tempToC graus = fromIntegral (graus - 32) / 1.8

tempToF :: Float -> Integer
tempToF graus =  ceiling (graus  * 1.8 + 32)