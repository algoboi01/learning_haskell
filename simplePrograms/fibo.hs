module Fibo where

fib :: Integer -> Integer
fib n = round $ phi ** fromIntegral n / sq5
  where
    sq5 = sqrt 5 :: Double
    phi = (1 + sq5) / 2

fiboList :: Integer -> [Integer]
fiboList n = map fib [0..n]

main = 
    putStrLn $ show $ fiboList 10