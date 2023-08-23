module Primes where

-- from Haskell's Official Website
primes :: [Integer]
primes = filterPrime [2..] where
  filterPrime (p:xs) = 
    p : filterPrime [x | x <- xs, x `mod` p /= 0]

