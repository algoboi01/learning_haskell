module Recursion_Polymorphism_Prelude where

data IntList = Empty 
             | Cons Int IntList
  deriving Show

-- map functions to a list
mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty       = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

-- definition of the functions to be applied
addOne x = x + 1
square x = x * x

-- applying the functions to a list
addOneToAll xs = mapIntList addOne xs
absAll xs      = mapIntList abs xs
squareAll xs   = mapIntList square xs

myIntList      = Cons 2 (Cons (-3) (Cons 5 Empty))

main1          = print $ squareAll $ addOneToAll $ absAll $ myIntList

keepOnlyEven :: IntList -> IntList
keepOnlyEven Empty = Empty
keepOnlyEven (Cons x xs) 
  | even x    = Cons x (keepOnlyEven xs)
  | otherwise = keepOnlyEven xs

main2 = print $ keepOnlyEven $ myIntList

filterIntList :: (Int -> Bool) -> IntList -> IntList
filterIntList _ Empty = Empty
filterIntList p (Cons x xs)
  | p x       = Cons x (filterIntList p xs)
  | otherwise = filterIntList p xs

main3 = print $ filterIntList even $ myIntList

data List t = E | C t (List t)
  deriving Show

filterList _ E = E
filterList p (C x xs)
  | p x       = C x (filterList p xs)
  | otherwise = filterList p xs
  
myList = C 2 (C (-3) (C 5 E))

main4 = print (filterList even myList)

mapList :: (a -> b) -> List a -> List b
mapList f (C x xs) = C (f x) (mapList f xs)
mapList f E        = E

double x = 2 * x

main5 = print (mapList double myList)