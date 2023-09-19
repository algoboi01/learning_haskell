-- from the snippets from the CIS1940 course
-- https://www.seas.upenn.edu/~cis1940/spring13/lectures/02-ADTs.html
--
module Recursive_Data_Types where

data IntList = Empty | Cons Int IntList

--intListProd :: IntList -> Int
--intListProd Empty      = 1
--intListProd (Cons x 1) = x * intListProd 1 -- (produces error??)

data Tree = Leaf Char
          | Node Tree Int Tree
     deriving Show

tree :: Tree
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))
