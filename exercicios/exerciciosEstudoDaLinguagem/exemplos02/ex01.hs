import Data.List

impares :: [Int] -> [Int]
impares = sort . filter impar

impar :: Integral a => a -> Bool
impar x = x `mod` 2 == 1