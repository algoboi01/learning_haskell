module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1 -- initial conditions
factorial n 
    | n > 0     =  n * factorial(n-1)
    | otherwise = error "Factorial of a negative number!"


doubleFactorial :: Integer -> Integer
doubleFactorial 0 = 1 -- initial conditions
doubleFactorial 1 = 1 -- initial conditions
doubleFactorial n 
    | n > 1     = n * doubleFactorial (n-2)
    | otherwise = error "factrial of a negative number is not defined"
        


