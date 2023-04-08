module Stuff where

square :: Int -> Int
square x = x * x

inc :: Int -> Int
inc x = x + 1 

average :: Int -> Int -> Int
average a b = (a+b) `div` 2

showResult :: Int -> String
showResult x = "The Result is " ++ show(x)

areaOfCircle :: Float -> String
areaOfCircle x = "The area of circle with radius " ++ show(x) ++ "cm " ++ " is " ++ show(3.14*x*x) ++ " cm^2."

repeat' :: a -> [a]
repeat' x = x: repeat' x

