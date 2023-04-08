module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = 
   if n > 0 
        then n * factorial(n-1)
        else
         error "Factorial of a negative number!"

main = do
  n <- readLn
  k <- readLn
  let z = 1 `div` (1 + n `mod` k)
  putStrLn (concat (replicate z "not") ++ " bigger than zero")
