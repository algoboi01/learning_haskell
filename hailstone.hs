module Hailstone where

hailstone :: Integer -> Integer
hailstone n 
   | n `mod` 2 == 0 = n `div` 2
   | otherwise      = 3 * n + 1
