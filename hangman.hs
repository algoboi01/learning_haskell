module Hangman where

import System.IO
import System.Random

-- The word list for the game
wordList :: [String]
wordList = ["apple", "banana", "cherry", "orange", "lemon"]

-- The maximum number of incorrect guesses allowed
maxGuesses :: Int
maxGuesses = 6

-- Play the game
main :: IO ()
main = do
    -- Choose a random word from the word list
    randomIndex <- randomRIO (0, length wordList - 1)
    let word = wordList !! randomIndex
    putStrLn $ "The word is: " ++ replicate (length word) '_'
    playGame word [] maxGuesses

-- Play one round of the game
playGame :: String -> [Char] -> Int -> IO ()
playGame word guesses remainingGuesses
    -- If the player has used up all their guesses, the game is over
    | remainingGuesses == 0 = do
        putStrLn "You lose!"
        putStrLn $ "The word was: " ++ word
    -- If the player has correctly guessed all the letters in the word, they win
    | all (`elem` guesses) word = do
        putStrLn "You win!"
        putStrLn $ "The word was: " ++ word
    -- Otherwise, continue playing the game
    | otherwise = do
        putStrLn $ "Guesses remaining: " ++ show remainingGuesses
        putStrLn $ "Guesses so far: " ++ show guesses
        putStr "Enter a guess: "
        hFlush stdout
        guess <- getLine
        -- If the guess is a single character, check if it is in the word
        case guess of
            [c] -> case c `elem` word of
                        True  -> do
                            putStrLn "Correct!"
                            let newGuesses = c : guesses
                            playGame word newGuesses remainingGuesses
                        False -> do
                            putStrLn "Incorrect!"
                            let newGuesses = c : guesses
                                newRemainingGuesses = remainingGuesses - 1
                            playGame word newGuesses newRemainingGuesses
            _   -> do
                putStrLn "Invalid guess, please enter a single letter."
                playGame word guesses remainingGuesses

