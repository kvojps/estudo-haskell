--Execute com o GHCI
--[x | x <- [0,2..100], x `mod` 6 == 0] Lista que retorna os pares de 0 até 100 que são múltipos de 6
--[(x, y) | x <-[0..5], y <-[11..16]]
--concat [[1,2,3],[6,7,8]]
--zip[1,2,3]"ola" >> [(1,'o'),(2,'l'),(3,'a')]

divisores :: Integral a => a -> [a]
divisores n = [x | x <- [1..n], n `mod` x == 0]

primo :: Integral a => a -> Bool
primo x = divisores x == [1,x]