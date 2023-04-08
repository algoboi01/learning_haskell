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
isSmall Shoe       = True
isSmall Ship       = False
isSmall SealingWax = True
isSmall Cabbage    = True
isSmall King       = False

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
failureToZero Failure = 0
failureToZero (OK d) = d

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
