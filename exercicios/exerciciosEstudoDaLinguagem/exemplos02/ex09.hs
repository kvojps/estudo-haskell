altMap :: (t -> a) -> (t -> a) -> [t] -> [a]
altMap f g  [] = []
altMap f g (x:xs) = f x : altMap g f xs