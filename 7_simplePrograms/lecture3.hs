-- https://www.seas.upenn.edu/~cis1940/spring13/lectures/03-rec-poly.html

module Lecture3 where

data IntList = Empty 
             | Cons Int IntList
     deriving Show


absAll :: IntList -> IntList
absAll Empty       = Empty
absAll (Cons x xs) = Cons (abs x) (absAll xs)

squareAll :: IntList -> IntList
squareAll Empty       = Empty
squareAll (Cons x xs) = Cons (x*x) (squareAll xs)


-- Polymorphic data types
--
data List t = E
            | C t (List t)
     deriving Show

lst1 :: List Int
lst1 = C 3 (C 5 (C 2 E))

lst2 :: List Char
lst2 = C 'x' (C 'y' (C 'z' E))

lst3 :: List Bool
lst3 = C True (C False E)

filterList :: (a -> Bool) -> List a -> List a
filterList _ E = E
filterList p (C x xs)
   | p x       = C x (filterList p xs)
   | otherwise = filterList p xs

-- oh wow! (when it hits you) 
mapList :: (a -> b) -> List a -> List b
mapList _ E = E
mapList f (C x xs) = C (f x) (mapList f xs)

-- this is me writing a function which adds up the values from a list
sumList :: List Int -> Int
sumList E        = 0
sumList (C x xs) = x + sumList xs

-- AHA!!
generateList :: [a] -> List a
generateList [] = E
generateList (x:xs) = C x (generateList xs)
-- try: generateList [1..10] or generateList ['a'..'z']


