-- Project Euler Problem 16 Solution

module PowerDigitSum where

-- Unwraps the digits of a number and saves it in a list
toDigits :: Integer -> [Integer]
toDigits x  
    | x == 0    = []
    | x < 0     = []
    |otherwise  = toDigits (x `div` 10) ++ [x `mod` 10]

main = do
   let number = 2^1000 :: Integer -- gives out the number as an Integer than expressing it in the scientific notation
   let digits = toDigits number -- stores the digits of the numbers in a list
   let sumOfDigits = sum digits -- adds up all the numbers in the above list
  
   putStrLn $ show sumOfDigits
