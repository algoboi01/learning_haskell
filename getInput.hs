module GetInput where

areaOfTriangle :: Float -> Float -> Float
areaOfTriangle b h = (b+h) / 2

main = do
  putStrLn "The base?"
  base <- getLine
  putStrLn "The height?"
  height <- getLine
  let area = areaOfTriangle (read(base) read(height))
  putStrLn "The are of the triangle is " ++ show(area)
