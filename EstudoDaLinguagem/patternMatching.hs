nao :: Bool -> Bool
nao x = if x then False else True

naoV2 :: Bool -> Bool
naoV2 x
    | x = False
    | otherwise = True

naoV3 :: Bool -> Bool
naoV3 True = False
naoV3 False = True

soma :: (Eq a, Num a) => a -> a -> a
soma 0 y = y
soma x 0 = x
soma x y = x + y

mult :: (Eq a, Num a) => a -> a -> a
mult 0 _ = 0
mult _ 0 = 0
mult 1 y = y
mult x 1 = x
mult x y = x * y