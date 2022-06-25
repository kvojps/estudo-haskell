calcularNotas :: Integral b => (b, b) -> b -> (b, b)
calcularNotas  (notasRestantes, notas) valorNota = 
    (notasRestantes `mod` valorNota, notas + notasRestantes `div` valorNota)

mostrarNotas :: (Foldable t, Integral b) => (b, b) -> t b -> (b, b)    
mostrarNotas (x, y) z = foldl calcularNotas (x, y) z 

--mostrarNotas (576,0) [100,50,20,10,5,2,1] = 
    --(576 `mod` 100, 0 + 576 `div` 100)
    --(76,5)***
    --(76 `mod` 50, 5 + 76 `div` 50)
    --(26,6)***
    --(26 `mod` 20, 6 + 26 `div` 20)
    --(6,7)***
    --(6 `mod` 10, 7 + 6 `div` 10)
    --(6,7)***
    --(6 `mod` 5, 7 + 6 `div` 5 )
    --(1,8)***
    --(6 `mod` 2, 7 + 6 `div` 2 )
    --(1,8)***
    --(6 `mod` 1, 7 + 6 `div` 1 )
    --(0,9)