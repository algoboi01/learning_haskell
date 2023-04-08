module Len where

len :: [Int] -> Int
len [] = 0
len (x:xs) = 1 + len (xs)

main = do
   len [15,17,36]
