nao :: Bool -> Bool
nao x = if x then False else True

naoV2 :: Bool -> Bool
naoV2 x
    | x = False
    | otherwise = True

naoV3 :: Bool -> Bool
naoV3 True = False
naoV3 False = True