mod2 :: Integral a => a -> a -> a
mod2 x y = x - ((x `div` y) * y)
--dividendo - (quociente * divisor)