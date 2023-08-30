module Main where

import SimpleJSON

main = do 
    print(JObject [("foo", JNumber 1), ("bar", JBool False)])
