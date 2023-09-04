module Input_Output where

main = do
  putStrLn "Please enter your name: "
  name <- getLine
  putStrLn ("Hello, " ++ name ++ " how are you?")

doGuessing :: (Ord a, Read a) => a -> IO ()
doGuessing num = do
   putStrLn "Enter your guess:"
   guess <- getLine
   if (read guess) < num 
     then 
       do 
        putStrLn "Too low!";  
        doGuessing num

   else if (read guess) > num 
      then 
       do 
        putStrLn "Too high!"; 
        doGuessing num

   else putStrLn "You Win!"
