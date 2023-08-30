module Find_Color where

data Color = Red | Green | Blue | Yellow | Orange deriving (Eq, Show)
type Hash = String

findColorByHash :: [Color] -> Hash -> Maybe Color
findColorByHash colors hash = findColor colors
  where
    findColor []            = Nothing
    findColor (x:xs)
      | hashColor x == hash = Just x
      | otherwise           = findColor xs

hashColor :: Color -> Hash
hashColor Red    = "ba19e9c3d5f49882ddaafed4f286a8a81491150426d321179270e27e74a89097"
hashColor Green  = "d486dfbd5fb578340bccbdd0a662527eab38550648d5f44517e5ac71b8824703"
hashColor Blue   = "ec7d56a01607001e6401366417c5e2eb00ffa0df17ca1a9a831e0b32c8f11bf7"
hashColor Yellow = "19dd83f117525b931fccdafe808aaa6939af792ee549f359eff13fac0d622f5d"
hashColor Orange = "78e7771b8b46e11ddb34ba48887e1330525215f96d94778980d1186e6f09f6b4"

-- Example usage:
-- colors = [Red, Green, Blue, Yellow, Orange]
-- hash = "d486dfbd5fb578340bccbdd0a662527eab38550648d5f44517e5ac71b8824703"
-- findColorByHash colors hash => Just Green
