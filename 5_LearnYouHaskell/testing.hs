module Testing where

-- reverse Strings (working)
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]

-- implementation of zipWith function
zipWith' :: (a-> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

largestDivisible :: (Integral a) => a  
largestDivisible = head (filter p [100000,99999..])  
    where p x = x `mod` 3829 == 0  

-- collartz sequence again
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n: chain (n `div` 2)
    | odd  n = n: chain (n*3 + 1)

-- foldl ?? sum 
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs 

(.) :: (b -> c) -> (a -> b) -> a -> c
f . g = \x -> f (g x)
