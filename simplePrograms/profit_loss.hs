-- if cost price and selling price of an item are given, write a program to
-- determine weather the seller has made a profit or incurred loss
-- determine how much profit he made or loss he incurred

module Profit_Loss where

checkForProfitLoss :: Int -> Int -> IO ()
checkForProfitLoss x y 
    | x < y     = putStrLn $ "You have made a profit of " ++ show (y - x)
    | otherwise = putStrLn $ "You have incurred a loss"

