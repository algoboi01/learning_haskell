doubleMe x = x + x

doubleUs x y = x^2 + y ^2

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x         = x : filter p xs
    | otherwise   = filter p xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
   let smallerSorted = quicksort (filter (<=x) xs)
       biggerSorted  = quicksort (filter (>x) xs)
   in smallerSorted ++ [x] ++ biggerSorted

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3892 == 0

squareOddNumbers ::  [Int] -> [Int]
squareOddNumbers [] = []
squareOddNumbers (x:xs) = if x==0 then [] else [x * x] ++ squareOddNumbers xs

quadratic a b c  
         | disc > 0 = 2
         | disc == 0 = 1
         | otherwise = 0
            where
             disc = b^2 - 4 * a * c


