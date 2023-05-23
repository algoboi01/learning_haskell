module Maybe_Just where

eval :: a -> Maybe Int
eval n = Just n
eval x y = case eval x of 
              Nothing -> Nothing
              Just n -> case eval y of 
                          Nothing -> Nothing
                          Just m -> x `div` y
