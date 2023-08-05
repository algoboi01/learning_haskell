module New where

sameThreeAround :: [Int] -> Bool
sameThreeAround list = 
    let firstThree = take 3 list
        lastThree = reverse (take 3 (reverse list))
    in firstThree == lastThree


