module Problem_13 where

-- reads over the entire file and converts into a list of Integer which can then be mapped to the sum function 
convertToInteger :: [String] -> [Integer]
convertToInteger [] = []
convertToInteger (x:xs) = [read x :: Integer] ++ convertToInteger xs

--main program
main = do
   number <- readFile "numbers.dat" --saved the numbers into a file named "numbers.dat"
   let numberList = words number
   let sumResult = sum $ convertToInteger $ numberList
   let firstTen = take 10 (show sumResult)

   putStrLn $ show firstTen -- prints out "5537376230"



