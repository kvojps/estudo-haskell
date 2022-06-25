buscar :: Eq a1 => a1 -> [(a1,a2)] -> [a2]
buscar k xs = [v | (k', v) <- xs, k == k']