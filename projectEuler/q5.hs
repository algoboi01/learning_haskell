module Question5 where

factorial :: Integer -> Integer
factorial x = product [1..x]

multiple :: Integer -> Integer -> [Integer]
multiple a b = [ a * x | x <- [1..b]]

scm :: [Integer] -> [Integer] -> [Integer]
scm (x:xs) y = if x `elem` y then [x] else scm xs y

