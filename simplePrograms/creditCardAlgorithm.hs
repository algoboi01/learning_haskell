-- CIS 194 : Homework 1
-- https://www.seas.upenn.edu/~cis1940/spring13/hw/01-intro.pdf
-- Ex 1 to 5
-- Works as expected (atleast for now. On my machine)
module CreditCardAlgorithm where

-- unwraps the digits of a number and saves it in a list
toDigits :: Integer -> [Integer]
toDigits x  
    | x == 0    = []
    | x < 0     = []
    |otherwise  = toDigits (x `div` 10) ++ [x `mod` 10]

-- reverses the list produced by toDigit
toDigitsRev :: Integer -> [Integer]
toDigitsRev x = reverse $ toDigits x 

-- doubles every number according to the exercise question
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x:y:xs) 
   | length (x:y:xs) `mod` 2 == 0   = [x * 2] ++ [y] ++ doubleEveryOther xs
   | otherwise                      = [x] ++ [2 * y] ++ doubleEveryOther xs 

-- converts a number to it's digits from a list
toDigits' :: [Integer] -> [Integer]
toDigits' [] = []
toDigits' (x:xs) 
   | x >= 10   = toDigits' [x `div` 10] ++ [x `mod` 10] ++ toDigits' xs 
   | otherwise = [x] ++ toDigits' xs

-- Adds up every element of the list
sumUpList :: [Integer] -> Integer
sumUpList [] = 0
sumUpList (x:xs) = x + sumUpList xs

-- checks if the provided card number is valid or not
validate :: Integer -> Bool
validate x 
   | (sumUpList $ toDigits' $ doubleEveryOther $ toDigits x) `mod` 10 == 0 = True
   | otherwise                                                             = False

-- test
main = do
   putStrLn $ show $ validate 4012888888881881 -- returns True
   putStrLn $ show $ validate 4012888888881882 -- returns Fasle
