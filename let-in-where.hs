-- introduction to let..in and where

circleArea :: Double -> Double
circleArea r = pi * rsquare
    where pi = 3.1415926
          rsquare = r * r

circleArea1 :: Double -> Double
circleArea1 r = let pi = 3.1415926
                    rsquare = r * r
                in pi * rsquare
