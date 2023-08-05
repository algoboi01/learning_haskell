module Something where

import Prelude hiding (head)

head :: [a] -> a
head (x:_)  = x
head []     = error "head"

emptyStringList :: [String]
emptyStringList = []

main = print $ head emptyStringList

-- they both do the same thing
doStuff1 :: [Int] -> Int
doStuff1 []  = 0
doStuff1 [_] = 0
doStuff1 xs  = head xs + head (tail xs)

doStuff2 :: [Int] -> Int
doStuff2 []        = 0
doStuff2 [_]       = 0
doStuff2 (x1:x2:_) = x1 + x2

main1 = print $ doStuff1 [1,2,3,4]

-- dont use head, tail, init, last and (!!)

safeHead :: [a] -> Maybe a
safeHead x = case x of
	[] -> Nothing
	(x:_) -> Just x