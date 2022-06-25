import Data.List
delPosicao :: Eq a => Int -> [a] -> [a]
delPosicao pos xs = delete (xs !! pos) xs