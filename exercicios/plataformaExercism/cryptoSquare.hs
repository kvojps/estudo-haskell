import Data.Char

--incompleto
normalizeString :: [Char] -> [Char]
normalizeString xs = [item | item <- lista, elem item ['a' .. 'z']]
    where 
        lista = map toLower xs