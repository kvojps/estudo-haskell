import Data.List
import Data.Char

isIsogram :: [Char] -> Bool
isIsogram xs = if filtroQtdLetras == [] then True else False
    where
        filtroQtdLetras = filter (>1) qtdLetras
        qtdLetras = snd (unzip (getLetters xs))

getLetters :: [Char] -> [(Char, Int)]
getLetters xs = [(x, length(elemIndices x letras)) | x <- ['a'..'z'], elem x letras]
    where letras = map toLower xs