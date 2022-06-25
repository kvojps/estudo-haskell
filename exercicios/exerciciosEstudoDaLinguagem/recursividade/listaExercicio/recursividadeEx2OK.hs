somar :: (Eq p, Num p) => p -> p
somar 0 = 0
somar n = n + somar (n - 1)
--Resolvido