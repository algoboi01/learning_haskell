-- Project Euler Problem 14 Solution
-- Inefiicient

module LongestChainCollatzSequence where

-- Generates a list of Collatz sequence of a number
collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n 
    | even n    = (n) : collatz (n `div` 2)
    | odd  n    = (n) : collatz (3 * n + 1)
    | otherwise = []

-- Produces a tuple with shows the number and the length of the Collatz sequence of that number
tupleCollatz :: Integer -> (Integer, Int)
tupleCollatz x = (x, length $ collatz x)

-- Gives out the tuple element from a list which has the longest chain
gimmeLargestChainTuple :: [(Integer, Int)] -> (Integer, Int)
gimmeLargestChainTuple [x] = x
gimmeLargestChainTuple (x:y:xs) = gimmeLargestChainTuple $ compareTuples x y : xs

-- Helper function to 'gimmeLargestChainTuple' which compares the last element of two tuples at a time
compareTuples :: (Integer, Int) -> (Integer, Int) -> (Integer, Int)
compareTuples (a, b) (c, d) 
      | b < d = (c,d)
      | b > d = (a,b)
      | otherwise = (a,b) -- for equal elements


main = do
    let list = map tupleCollatz [1..1000000]
    let largestChainTuple = gimmeLargestChainTuple list
    
    putStrLn $ show $ largestChainTuple -- shows (837799,525) -> 837799 has the largest chain sequence of length 525
