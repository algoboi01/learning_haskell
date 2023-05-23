module HaskellCalculator where

main = do
    putStrLn "Enter the first number: "
    num1 <- getLine

    putStrLn "Enter the second number: "
    num2 <- getLine

    putStrLn "Enter an operator (+, -, *, /): "
    operator <- getLine
    
    let result = case operator of
                   "+" -> read num1 + read num2
                   "-" -> read num1 - read num2
                   "*" -> read num1 * read num2
                   "/" -> read num1 / read num2
                   _   -> error "Invalid operator"
    putStrLn $ show result

