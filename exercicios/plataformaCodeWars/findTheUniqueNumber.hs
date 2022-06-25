import Data.List

--Importante que somente um elemento da lista seja diferente.
getUnique :: [Int] -> Int
getUnique lista = if lstSort !! 1 == maximum lstSort then minimum lstSort else maximum lstSort
    where lstSort = sort lista