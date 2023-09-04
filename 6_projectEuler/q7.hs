module Question7 where

isPrime :: Integer -> Bool
isPrime k = if k > 1 then null [ x | x <- [2..floor $ sqrt $ fromInteger k], k `mod` x == 0] else False

primeNumbers :: [Integer]
primeNumbers = [ a | a <- [1..], isPrime a == True]

main = do
   putStrLn $ show $ primeNumbers !! 10000 -- returns 104743
