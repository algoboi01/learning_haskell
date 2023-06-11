module PrimeFactors where

factorize :: Integer -> Integer -> [Integer]
factorize _ 1 = [] 
factorize d n 
    | d * d > n = [n]
    | n `mod` d == 0 = d : factorize d (n `div` d)
    | otherwise = factorize (d + 1) n

primeFactors :: Integer -> [Integer]
primeFactors = factorize 2

main = do
    putStrLn "Enter the number: "
    number <- getLine
    
    print (show $ last $ primeFactors $ read number)

