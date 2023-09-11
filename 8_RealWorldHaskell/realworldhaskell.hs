-- Trying out code snippets from the book "Real World Haskell"
-- https://book.realworldhaskell.org/

module Chapter_2 where

-- Chapter 2 (Types and Functions)
-- Implementation of the drop function already defined in Haskell (Prelude)
-- Tweaked a bit

myDrop :: Int -> [a] -> [a]
myDrop n xs 
  | n <=0 || null xs = xs
  | otherwise        = myDrop (n-1) (tail xs) 

-- Problem 2 and error solution to Problem 3 
lastButOne :: [a] -> a
lastButOne x 
  | length x <= 1    = error "Length of list too short"
  | otherwise =  x !! ((length x) - 2) 
-- such cheap tricks (sorry, I will implement a recursive solution later)


