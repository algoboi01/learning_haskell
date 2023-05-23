module RandomNumbers where

import System.Random

main :: IO ()
main = do
  -- Create a new random number generator
  gen <- newStdGen
  
  -- Generate a random number between 1 and 100
  let (randomNumber, newGen) = randomR (1, 100) gen :: (Int, StdGen)
  putStrLn $ "Random number: " ++ show randomNumber

