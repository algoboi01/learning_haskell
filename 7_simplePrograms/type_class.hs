module Type_Class where

class Listable a where
  toList :: a -> [Int]

-- show
instance Listable Int where
  -- toList :: Int -> [Int]
  toList x = [x]

instance Listable Bool where
  toList True  = [1]
  toList False = [0]

instance Listable [Int] where
  toList = id

main = print $ toList True ++ toList (7::Int) ++ toList ([2,3,4,5] :: [Int])
