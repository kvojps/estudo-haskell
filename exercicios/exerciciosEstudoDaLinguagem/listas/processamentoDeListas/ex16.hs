inserirPosicao :: [Int] -> Int -> Int -> [Int]
inserirPosicao xs pos elemento =
    (take pos xs) ++ [elemento] ++ (drop pos xs) 

inserirPosicaoXRec :: (Eq t1, Num t1) => [t2] -> t1 -> t2 -> [t2]
inserirPosicaoXRec xs 0 e = e : xs
inserirPosicaoXRec (x:xs) n e = x : inserirPosicaoXRec xs (n-1) e 

--inserirPosicaoXRec [1,2,3,4,5] 3 10
--1 : inserirPosicaoXRec [2,3,4,5] 2 10
--1 : 2 : inserirPosicaoXRec [3,4,5] 1 10
--1 : 2 : 3 : inserirPosicaoXRec [4,5] 0 10
--1 : 2 : 3 : 10 : [4,5]