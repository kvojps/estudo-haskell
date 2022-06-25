--Uma compreensão que substitua cada número ímpar maior que 10 com BANG! e cada número ímpar menor que 10 com BOOM!.
--Se o número não for ímpar, fica fora da lista.
boomBangs :: Integral a => [a] -> [[Char]]
boomBangs xs = [if x > 10 then "BOOM!" else "BANG!" | x <-xs , odd x]