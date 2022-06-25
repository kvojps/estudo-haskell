

listaImpares1ate201 :: [Integer]
listaImpares1ate201 = [1,3..201]

listaInfinita :: [Integer]
listaInfinita = [0..]

indexa :: [a] -> Int -> a
indexa xs i = head(drop i xs)

fatorial :: Integer -> Integer
fatorial n = product[2..n]

--lista1 !! 0 -> Pega o primeiro elemento da lista1
--head lista1 -> Também pega o primeiro elemento da lista1
--tail lista1 -> Retorna os elementos da lista1, exceto o primeiro
--take 10 listaInfinita -> Retorna os 10 primeiros elementos da listaInfinita
--drop 10 listaInfinita -> Retira os 10 primeiros elementos da listaInfinita e a devolve
--length lista1 -> Retorna o tamanho da lista
--sum lista1
--product lista1
