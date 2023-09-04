module Testing where

data Color where
   Red :: Color
   Green :: Color
   Blue :: Color
   deriving Show

colorChar :: Color -> Char
colorChar Red = 'r'
colorChar Green = 'g'
colorChar Blue = 'b'

isRed :: Color -> Bool
isRed Red  = True
isRed _ = False

main = do
   putStrLn $ show $ isRed Green
