import Data.Char

scoreWord :: [Char] -> Integer
scoreWord word = sum (map scoreLetter word)

scoreLetter :: Char -> Integer
scoreLetter letter 
    | elem letter' ['A','E','I','O','U','L','N','R','S','T'] = 1
    | elem letter' ['D','G'] = 2
    | elem letter' ['B','C','M','P'] = 3
    | elem letter' ['F','H','V','W','Y'] = 4
    | letter' == 'K' = 5
    | elem letter' ['J', 'X'] = 8
    | elem letter' ['Q', 'Z'] = 10
    | otherwise = 0
    where
        letter' = toUpper letter