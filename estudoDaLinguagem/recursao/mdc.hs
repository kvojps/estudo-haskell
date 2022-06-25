mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)
-- mdc 48 18 = mdc 18 (12)
-- mdc 18 12 = mdc 12 (6)
-- mdc 12  6 = mdc  6 (0)
-- mdc 6 0
-- 6