-- O que eu consegui até o momento
import Data.List

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

metades :: [a] -> ([a], [a])    
metades xs = splitAt (((length xs) + 1) `div` 2) xs 

mergeSort :: Ord a => [a] -> [a]
mergeSort xs = merge (sort (fst (metades xs))) (sort (snd (metades xs)))

