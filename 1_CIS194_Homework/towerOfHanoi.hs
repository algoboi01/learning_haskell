-- CIS 194 : Homework 1
-- https://www.seas.upenn.edu/~cis1940/spring13/hw/01-intro.pdf
-- Ex 5 

module TowerOfHanoi where

type Peg = String
type Move = (Peg, Peg)

-- returns a list of moves to be performed 
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi x fromPeg toPeg auxPeg 
   | x < 0     = [] 
   | otherwise = (fromPeg, auxPeg) : hanoi (x-1) auxPeg fromPeg toPeg

