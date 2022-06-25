fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
-- fatorial 3 = 3 * fatorial 2
--              3 * 2 * fatorial 1
--              3 * 2 * 1 fatorial 0 
--              3 * 2 * 1 