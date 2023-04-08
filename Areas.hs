module Area where

areaTriangle :: Double -> Double -> Double
areaTriangle b h = (b * h) / 2

areaCircle :: Double -> Double
areaCircle r = pi * r^2

areaSquare :: Double -> Double
areaSquare x = x^2

areaRectangle :: Double -> Double -> Double
areaRectangle x y = x * y

volumeCylinder :: Double -> Double -> Double
volumeCylinder r h = pi * r^2 * h
