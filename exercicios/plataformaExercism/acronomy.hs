import Data.Char

abbreviate :: String -> String
abbreviate xs = getUppers (map toUpper initials)
    where
        initials = concat (getInitials xs)

getInitials :: [Char] -> [[Char]]
getInitials xs = [if wordIsUpper word then 
    (head word : []) else head word : getUppers(lowerFirstLetter word)  | word <- words']
    where
        words' = words (replaceValues xs)

replaceValues :: [Char] -> [Char]
replaceValues xs = replace xs "-" " "

replace :: Eq a => [a] -> [a] -> [a] -> [a]
replace [] _ _ = []
replace s find repl =
    if take (length find) s == find
        then repl ++ (replace (drop (length find) s) find repl)
        else [head s] ++ (replace (tail s) find repl)

getUppers :: [Char] -> String
getUppers xs = [x | x <- xs, elem x ['A'..'Z']]

lowerFirstLetter :: [Char] -> [Char]
lowerFirstLetter xs = toLower (head xs) : tail xs

wordIsUpper :: [Char] -> Bool
wordIsUpper xs =  notElem False (map isUpper xs) 
