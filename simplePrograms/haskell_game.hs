import System.Random

main = do
  -- Create a random number generator
  rng <- newStdGen

  -- Create a box with dimensions 10x10
  box <- newBox 10 10

  -- Create a ball and place it in the center of the box
  ball <- newBall (5, 5)

  -- Start the game loop
  forever $ do
    -- Get a random direction
    direction <- randomR (-1, 1) rng

    -- Move the ball in the random direction
    ball <- moveBall ball direction

    -- Check if the ball has hit a wall
    if hitWall ball box
      then putStrLn "The ball hit a wall!"
      else do
        -- Draw the ball on the screen
        drawBall ball

        -- Sleep for a millisecond
        sleep 1

-- A box is a rectangular region of space
data Box = Box { width :: Int, height :: Int }

-- A ball is a point in space
data Ball = Ball { x :: Int, y :: Int }

-- Create a new box with the given dimensions
newBox :: Int -> Int -> Box
newBox width height = Box width height

-- Create a new ball at the given coordinates
newBall x y = Ball x y

-- Move the ball in the given direction
moveBall :: Ball -> Int -> Ball
moveBall ball direction = Ball (ball.x + direction) (ball.y)

-- Check if the ball has hit a wall
hitWall :: Ball -> Box -> Bool
hitWall ball box =
  ball.x < 0 || ball.x >= box.width || ball.y < 0 || ball.y >= box.height

-- Draw the ball on the screen
drawBall :: Ball -> IO ()
drawBall ball = putStrLn $ "(" ++ show ball.x ++ "," ++ show ball.y ++ ")"

-- Sleep for the given number of milliseconds
sleep :: Int -> IO ()
sleep milliseconds = threadDelay milliseconds
