-- if the number is even, divide it by two
-- if the number is odd, triple it and add one

module Collatz where

checkNumber :: Integer -> Integer
checkNumber n = if even n then divide else tripleAdd
  where divide = div n 2
               tripleAdd = 3*n + 1

collatz :: Integer -> Integer
collatz 1 = 0
collatz x = 1 + collatz (checkNumber x)
