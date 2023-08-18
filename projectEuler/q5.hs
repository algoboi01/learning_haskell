module Question5 where

-- assuming LCM function to be already defined here

lcmList :: [Integer] -> Integer
lcmList [x] = x
lcmList (x:y:xs) = lcmList $ [lcm x y] ++ xs

main = do
   putStrLn $ show $ lcmList [1..20] -- prints out 232792560

