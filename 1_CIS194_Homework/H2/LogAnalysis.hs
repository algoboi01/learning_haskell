-- https://www.seas.upenn.edu/~cis1940/spring13/hw/02-ADTs.pdf
-- such inefficient solutions posted here (hehe)
 
module LogAnalysis where

import Log

-- Excercise 1 Solution
-- it works (the way it should)
-- ignore the rule of meaningful argument names
parseMessage :: String -> LogMessage
parseMessage x
    | s !! 0 == "E" = LogMessage (Error error_type) timestamp_r message_r
    | s !! 0 == "I" = LogMessage Info timestamp message
    | s !! 0 == "W" = LogMessage Warning timestamp message 
    | otherwise     = Unknown x
      where
         s = words x
         -- as Error takes an argument, the seperated string will be different from other types of log message
         error_type  = read $ s !! 1
         timestamp_r = read $ s !! 2
         message_r   = s !! 3
         -- for other Log message types (Warning, Info)
         timestamp   = read $ s !! 1
         message     = s !! 2

-- parse :: String -> [LogMessage]

