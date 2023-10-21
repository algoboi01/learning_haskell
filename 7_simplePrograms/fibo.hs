module Fibo where

-- this one is way faster
fib :: Integer -> Integer
fib n = round $ phi ** fromIntegral n / sq5
  where
    sq5 = sqrt 5 :: Double
    phi = (1 + sq5) / 2

-- duhh (slowest)
-- taken from here: https://lisp-lang.org/learn/functions
fibo :: Integer -> Integer
fibo n 
   | n < 2     = n
   | otherwise = fibo (n-1) + fibo (n-2)
