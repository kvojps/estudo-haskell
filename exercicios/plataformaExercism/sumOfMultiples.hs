import Data.List

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum (nub (multiples factors limit)) 

multiples :: [Integer] -> Integer -> [Integer]
multiples factors limit = [num | num <- listaNum ,factor <- factors', mod num factor == 0]
    where 
        listaNum = [1..limit-1]
        factors' = filter (>0) factors



