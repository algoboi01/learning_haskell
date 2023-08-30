import Data.Maybe (Maybe(..))
import Data.Either (Either(..))
import qualified Data.List as List
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

----------------------------------------
-- Types

type UserId = Int
type State = String
type Food = String
type Mood = String
type Error = String

----------------------------------------
-- Maps
userStateMap :: Map UserId State
userStateMap = Map.fromList (List.zip users states)
  where
  users = [1, 2, 3, 4]
  states = ["Idaho", "Iowa", "Illinois", "Arizona"]

stateFoodMap :: Map State Food
stateFoodMap = Map.fromList (List.zip states foods)
  where
  states = ["Illinois", "Idaho", "Iowa", "New York"]
  foods = ["Hope+Change", "Potato", "Corn", "Hot Dog"]

foodMoodMap :: Map Food Mood
foodMoodMap = Map.fromList (List.zip foods moods)
  where
  foods = ["Cake", "Potato", "Corn", "Hope+Change"]
  moods = ["Euphoria", "Sad", "Sadder", "Saddest"]

----------------------------------------
-- Lookup functions
lookupUserState :: UserId -> Either Error State
lookupUserState key =
  case Map.lookup key userStateMap  of
    Nothing -> Left $ "UserId not found: " <> show key
    Just val -> Right val

lookupStateFood :: State -> Either Error Food
lookupStateFood key =
  case Map.lookup key stateFoodMap of
    Nothing -> Left $ "State not found: " <> show key
    Just val -> Right val

lookupFoodMood :: Food -> Either Error Mood
lookupFoodMood key =
  case Map.lookup key foodMoodMap of
    Nothing -> Left $ "Food not found: " <> show key
    Just val -> Right val


-- Determine the Mood for user 1
lookupUser1 =
   case lookupUserState 1 of
    Left err -> Left err
    Right state -> case lookupStateFood state of
                    Left err -> Left err
                    Right food -> lookupFoodMood food
