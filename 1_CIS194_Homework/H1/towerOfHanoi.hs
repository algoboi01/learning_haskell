-- CIS 194 : Homework 1
-- https://www.seas.upenn.edu/~cis1940/spring13/hw/01-intro.pdf
-- Ex 5 

module TowerOfHanoi where

-- As per described in the problem
type Peg = String
type Move = (Peg, Peg)

-- Function Decleration 
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move] 
hanoi n fromPeg toPeg auxPeg 
   | n == 0    = [] -- stops when there are no more disks left (base case)
   | otherwise = hanoi (n - 1) fromPeg auxPeg toPeg ++ [(fromPeg, toPeg)] ++ hanoi (n - 1) auxPeg toPeg fromPeg

