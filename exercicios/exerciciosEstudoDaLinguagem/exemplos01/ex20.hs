import Data.List

comprime xs = group xs

converte xs = if length xs > 3 then "!" ++ show (length xs) ++ show (head xs) else xs