module Condtional where

-- defining signum function
si0 :: (Ord a, Num a) => a -> Int
si0 x = if x < 0 then -1 else if x == 0 then 0 else 1

-- guards (defining signum function)
si :: (Ord a, Num a) => a -> Int
si x | x <  0  = -1
         | x == 0  = 0
         | x >  0  = 1
