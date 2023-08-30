module Ex2 where

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
  | x `elem` xs = nub xs
  | otherwise   = x : nub xs
