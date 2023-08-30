module Multiples where

import Data.List

-- first thought solution
multiples :: Int -> [Int]
multiples x = [a | a <- [1..1000], a `mod` x == 0, a < 1000]

main = do
    let mult3 = multiples 3
    let mult5 = multiples 5 
    let union3_5 = sort $ mult3 `union` mult5 

    (sum union3_5)

-- easier
main1 = do
    let multiples = [x | x <- [1..1000], x `mod` 3 == 0 || x `mod` 5 == 0, x < 1000]
    sum multiples