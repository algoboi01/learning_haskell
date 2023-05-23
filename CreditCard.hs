module CreditCard where

double :: [Integer] -> [Integer]
double (x:y:xs) = x : 2*y: double xs
double a = a

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

seperateDigits :: [Integer] -> [Integer]
seperateDigits [] = []
seperateDigits (x:xs) = 
