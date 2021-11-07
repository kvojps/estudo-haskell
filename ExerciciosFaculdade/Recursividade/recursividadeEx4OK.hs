euclides:: Integer -> Integer -> Integer
euclides 0 y = y
euclides x y = euclides (y `mod` x) x
--Resolvido