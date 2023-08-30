module TwitterMathProblem where

-- Provides with a list with numbers which are divisible by 5 but not 2.
divisibleNumbers :: [Integer] -> [Integer]
divisibleNumbers [] = error "Cannot perform operation on an empty list"
divisibleNumbers x = filter (\x -> x `mod` 2 /= 0 && x `mod` 5 == 0) x

-- Perform the addition of the all the numbers from the list from above function
sumUpAll :: [Integer] -> Integer
sumUpAll [] = 0
sumUpAll (x:xs) = x + sumUpAll xs

