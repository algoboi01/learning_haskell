module Higher_order_programming_and_type_inference where

greaterThan100 :: [Integer] -> [Integer]
greaterThan100 x = filter (\x -> x > 100) x

greaterThan100' :: [Integer] -> [Integer]
greaterThan100' x = filter (> 100) x

f :: (Int,Int) -> Int
f (x,y) = 2*x + y

schönfinkel :: ((a,b) -> c) -> a -> b -> c
schönfinkel f x y = f (x,y)

unschönfinkel :: (a -> b -> c) -> (a,b) -> c
unschönfinkel f (x,y) = f x y

main1 = print (schönfinkel f 2 3)

--wholemeal programming
foobar :: [Integer] -> Integer
foobar []     = 0
foobar (x:xs)
  | x > 3     = (7*x + 2) + foobar xs
  | otherwise = foobar xs
  
main2 = print (foobar [1,2,3,4,5])

foobar' :: [Integer] -> Integer
foobar' = sum . map (\x -> 7*x + 2) . filter (>3)