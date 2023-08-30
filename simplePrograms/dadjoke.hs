{-# LANGUAGE OverloadedStrings #-}

import Control.Monad.IO.Class (liftIO)
import Data.Aeson
import Data.Text (Text)
import qualified Data.Text as T
import Network.HTTP.Simple

-- Data structure to hold the joke response
data Joke = Joke
  { jokeSetup :: Text
  , jokePunchline :: Text
  } deriving (Show)

instance FromJSON Joke where
  parseJSON = withObject "Joke" $ \v -> Joke
    <$> v .: "setup"
    <*> v .: "punchline"

-- Fetch a dad joke from the API
fetchJoke :: IO (Maybe Joke)
fetchJoke = do
  request <- parseRequest "https://icanhazdadjoke.com/"
  let request' = setRequestHeader "Accept" ["application/json"] request
  response <- httpJSON request'
  let joke = getResponseBody response :: Joke
  return (Just joke)

-- Display the joke
displayJoke :: Maybe Joke -> IO ()
displayJoke (Just joke) = do
  putStrLn $ T.unpack (jokeSetup joke)
  putStrLn $ T.unpack (jokePunchline joke)
displayJoke Nothing = putStrLn "Failed to fetch a joke."

-- Main function
main :: IO ()
main = do
  putStrLn "Fetching a dad joke..."
  joke <- fetchJoke
  displayJoke joke

