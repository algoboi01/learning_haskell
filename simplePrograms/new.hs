module New where

import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length []

main :: IO ()
main = do
  contents <- readFile "doesntexist.hs"
  putStrLn contents
