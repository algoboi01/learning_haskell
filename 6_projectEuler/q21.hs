module Problem_21 where

-- Gives out the proper divisors of a number
proper_divisors :: Integer -> [Integer]
proper_divisors 0 = []
proper_divisors x = [a | a <- [1..x `div` 2 + 1], x `mod` a == 0]

-- Checks for "Amicability" Lol
isAmicable :: Integer -> Bool
isAmicable a
  | a == b           = False -- amicable pairs are distinct integers (a /= b)
  | a == p           = True
  | otherwise        = False
    where
        b = sum $ proper_divisors a
        p = sum $ proper_divisors b

main = do
	let limit_num = 10000
	let result = sum $ [a | a <- [1..limit_num], isAmicable a == True]

	putStrLn $ show $ result -- 31626