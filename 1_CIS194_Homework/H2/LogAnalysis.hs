-- https://www.seas.upenn.edu/~cis1940/spring13/hw/02-ADTs.pdf
-- such inefficient solutions posted here (hehe)
 
module LogAnalysis where

import Log

-- Excercise 1 Solution
-- it works (the way it should i guess)
-- ignore the rule of meaningful argument & function names
parseMessage :: String -> LogMessage
parseMessage x
    | head s == "E" = LogMessage (Error error_type) timestamp_r message_r
    | head s == "I" = LogMessage Info timestamp message
    | head s == "W" = LogMessage Warning timestamp message 
    | otherwise     = Unknown x
      where
         s = words x -- seperates the contents after a space
         -- as Error takes an argument, the seperated string will be different from other types of log message
         error_type  = read $ s !! 1
         timestamp_r = read $ s !! 2
         message_r   = combineString $ drop 3 s
         -- for other Log message types (Warning, Info)
         timestamp   = read $ s !! 1
         message     = combineString $ drop 2 s

-- Creates a string from a list containing String elements
combineString :: [String] -> String
combineString [] = ""
combineString (x:xs) = x ++ " " ++ combineString xs -- leaves a space at the end but anyways

-- parse :: String -> [LogMessage]

