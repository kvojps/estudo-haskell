nth :: Int -> Int
nth n = last (listaPrimos n)

listaPrimos :: Int -> [Int]
listaPrimos n = take n[i | i <- [2..], isPrimeNumber i]

isPrimeNumber :: Int -> Bool
isPrimeNumber 1 = True
isPrimeNumber n =  notElem 0 (map (mod n) lista)
    where 
        lista = [2..n-1]

