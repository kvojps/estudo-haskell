indexLetras :: [(Char, Int)]
indexLetras = zip ['a'..'z'] [1..26]

wordsToMarks :: [Char] -> Int
wordsToMarks x = sum[num | letra1 <- x, (letra2,num) <- indexLetras, letra1 == letra2]