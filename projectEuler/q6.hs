module SumSquareDifference where

sumofSquares :: Int -> Int
sumofSquares x = sum $ [a * a | a <- [1..x]]

squareofSums :: Int -> Int
squareofSums x = (sum $ [1..x])^2

main = do
	print $ (squareofSums 100) - (sumofSquares 100)