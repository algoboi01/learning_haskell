module Question10 where

isPrime :: Integer -> Bool
isPrime k = if k > 1 then null [ x | x <- [2..floor $ sqrt $ fromInteger k], k `mod` x == 0] else False

primeNumbers :: [Integer]
primeNumbers = [ a | a <- [1..2_000_000], isPrime a == True]

main = do
   putStrLn $ show $ sum $ primeNumbers


