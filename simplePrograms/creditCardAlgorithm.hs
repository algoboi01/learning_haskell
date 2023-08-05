-- not working, needs to be worked upon.
module CreditCardAlgorithm where

-- (works) Doubles every next number in the list
doubleEveryTwo :: [Integer] -> [Integer]
doubleEveryTwo [] = []
doubleEveryTwo (x: []) = [2*x]
doubleEveryTwo (x: (y:xs)) = 2*x : y : doubleEveryTwo xs

-- (works) Adds the digits of every number in a list
addDigits :: [Integer] -> Integer
addDigits [] = 0
addDigits (x:xs) = x + addDigits xs

-- (works) unwraps the digits of a number and saves it in a list
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

-- checks for the validity
valid :: Integer -> Bool
valid x = addDigits (doubleEveryTwo(digs (x))) `mod` 10 == 0
