module ContainsDuplicate where

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort ys ++ [x] ++ quicksort zs
           where
            ys = [a | a <- xs, a <= x]
            zs = [b | b <- xs, b > x]

containsDuplicate :: [Int] -> Bool
containsDuplicate [] = False
containsDuplicate (x:xs) = if x `elem` xs then True else False

main = do
	let a = [1,1,1,3,3,4,3,2,4,2]

	containsDuplicate $ quicksort $ a