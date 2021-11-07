somaLista :: Num p => [p] -> p
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

obterElementos :: (Eq t, Num t) => t -> [a] -> [a]
obterElementos 0 xs = []
obterElementos _ [] = []
obterElementos n (x:xs) = x : obterElementos (n-1) xs

obterUltimoElemento :: [p] -> p 
obterUltimoElemento [x] = x
obterUltimoElemento (x:xs) = obterUltimoElemento xs 

--Resolvido