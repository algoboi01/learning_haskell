module Enumeration where

-- /show
data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
  deriving Show
  
-- show
isSmall :: Thing -> Bool
isSmall Ship       = False
isSmall King       = False
isSmall _          = True

main = print (isSmall Cabbage)

-- /show
data FailableDouble = Failure 
                    | OK Double
  deriving Show
  
-- show
a = Failure
b = OK 3.4

main1 = print (a,b)

-- show
safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

main2 = print (safeDiv 2 0, safeDiv 3 4)

-- show
failureToZero :: FailableDouble -> Double
failureToZero x = case x of
  Failure -> 0
  OK d    -> d

main3 = print (failureToZero Failure, failureToZero (OK 3.4))

-- show
-- Store a person's name, age, and favorite Thing
data Person = Person String Int Thing
  deriving Show
  
brent :: Person
brent = Person "Brent" 30 SealingWax

stan :: Person
stan = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

main4 = print (getAge brent)

baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

main5 = putStrLn (baz brent)

data IntList = Empty | Cons Int IntList
  deriving Show

-- show
intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (Cons x xs) = x * intListProd xs

main6 = print $ intListProd $ Cons 3 $ Cons 2 $ Cons 4 Empty

data Tree = Leaf Char
          | Node Tree Int Tree
  deriving Show

tree :: Tree
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))

main7 = print tree