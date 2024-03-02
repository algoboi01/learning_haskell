module Problem_20 where

-- Calculates the Factorial of a number n
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Gives a list of the digits of a number
toDigits :: Integer -> [Integer]
toDigits x  
    | x == 0    = []
    | x < 0     = []
    |otherwise  = toDigits (x `div` 10) ++ [x `mod` 10]

-- Problem Case
main = do
	let number = 100
	let sum_of_digits = sum $ toDigits $ factorial number

	putStrLn $ show $ sum_of_digits -- 648
