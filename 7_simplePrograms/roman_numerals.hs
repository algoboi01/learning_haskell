-- Define a helper function to convert a digit to a Roman numeral

digitToRoman :: Int -> Char -> Char -> Char -> String
digitToRoman n one five ten
  | n <= 3    = replicate n one
  | n == 4    = [one, five]
  | n <= 8    = five : replicate (n - 5) one
  | n == 9    = [one, ten]

-- Convert a number to Roman numerals
toRoman :: Int -> String
toRoman n
  | n <= 0         = ""
  | n >= 1000      = 'M' : toRoman (n - 1000)
  | n >= 900       = "CM" ++ toRoman (n - 900)
  | n >= 500       = 'D' : toRoman (n - 500)
  | n >= 400       = "CD" ++ toRoman (n - 400)
  | n >= 100       = 'C' : toRoman (n - 100)
  | n >= 90        = "XC" ++ toRoman (n - 90)
  | n >= 50        = 'L' : toRoman (n - 50)
  | n >= 40        = "XL" ++ toRoman (n - 40)
  | n >= 10        = 'X' : toRoman (n - 10)
  | n >= 9         = "IX" ++ toRoman (n - 9)
  | n >= 5         = 'V' : toRoman (n - 5)
  | n >= 4         = "IV" ++ toRoman (n - 4)
  | otherwise      = digitToRoman n 'I' 'V' 'X'

