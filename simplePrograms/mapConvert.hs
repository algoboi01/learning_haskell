module StringConvert where

-- ex 3.3 not done using map but works
f :: String -> [Bool]
f "" = []
f (x:xs) = [if x `elem` ['a'..'z'] then True else False] ++ f xs
-- x -- 

-- ex 3.4
f' :: [Bool] -> [Int]
f' [] = []
f' (x:xs) = [if x == True then 1 else 0] ++ f' xs

f'' :: [Int] -> Int
f'' [] = 0
f'' (x:xs) = x + f'' xs
--x --


