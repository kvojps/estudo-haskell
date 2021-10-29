import Data.List
interseccao :: Eq a => [a] -> [a] -> [a]
interseccao xs ys = xs `intersect` ys