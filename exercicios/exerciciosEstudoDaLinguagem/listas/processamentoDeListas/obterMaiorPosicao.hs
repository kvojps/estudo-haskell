import Data.List

obterMaiorPosicao :: Ord a => [a] -> (a,[Int])
obterMaiorPosicao xs = (maximum xs, elemIndices (maximum xs) xs)
--elemIndices : returning the indices of all elements equal to the query element