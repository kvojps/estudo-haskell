expectedMinutesInOven :: Integer
expectedMinutesInOven = 40

preparationTimeInMinutes :: Num a => a -> a
preparationTimeInMinutes layers = layers * 2

elapsedTimeInMinutes :: Num a => a -> a -> a
elapsedTimeInMinutes layers minutes = layers * 2 + minutes