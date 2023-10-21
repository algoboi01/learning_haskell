-- https://www.seas.upenn.edu/~cis1940/spring13/hw/02-ADTs.pdf
-- Such inefficient solutions posted here (hehe)
-- Sorry for some horrible code (warning)
--
module LogAnalysis where

import Log

-- Excercise 1 Solution
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

-- Parses the entire Log File
parse :: String -> [LogMessage]
parse x
  | x == []   = error "EMPTY FILE"
  | otherwise = map parseMessage (lines x)


-- Exercise 2 solution
-- Inserts the log messages in the order by checking the timestamp
insert :: LogMessage -> MessageTree -> MessageTree
-- Unknown messages should not be stored as they contain no timestamp and the tree should remain unchanged.
insert (Unknown _) tree = tree
insert logMessage Leaf = Node Leaf logMessage Leaf
insert logMessage (Node leftTree previousMessage rightTree)
   | getTimestamp logMessage <= getTimestamp previousMessage = Node (insert logMessage leftTree) previousMessage rightTree
   | otherwise = Node leftTree previousMessage (insert logMessage rightTree)
   
   where
     -- returns the timestamp from the log messages
     getTimestamp :: LogMessage -> Int
     getTimestamp (Unknown _) = 0
     getTimestamp (LogMessage _ timestamp _) = timestamp


-- Exercise 3 solution
-- build :: [LogMessage] -> MessageTree
