module Ex1 where

elem1 :: (Eq a) => a -> [a] -> Bool
elem1 _ [] = False
elem1 e (x:xs) = (e == x) || (elem e xs)

