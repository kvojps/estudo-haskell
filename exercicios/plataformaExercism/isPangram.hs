import Data.Char

alphabet :: [Char]
alphabet = ['a'..'z']

stringToLower :: [Char] -> [Char]
stringToLower frase = map toLower frase

isPangram :: String -> Bool
isPangram frase = False `notElem` [x `elem` fraseLower | x <- alphabet]
    where fraseLower = stringToLower frase