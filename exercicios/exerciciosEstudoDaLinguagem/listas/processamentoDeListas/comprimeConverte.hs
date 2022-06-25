import Data.List

comprime :: Eq a => [a] -> [[a]]
comprime xs = group xs

converte :: [Char] -> [Char]
converte xs = if length xs > 3 then "!" ++ show (length xs) ++ show (head xs) else xs