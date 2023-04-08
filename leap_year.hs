module Leap_Year where

leap_year :: Int -> Bool
leap_year year = if (year `mod` 4) == 0 then True else if (year `mod` 100) == 0 then True else if (year `mod` 400) == 0 then True else False
