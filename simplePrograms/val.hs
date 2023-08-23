addMaybe :: Int -> Maybe Int -> Int
addMaybe _ Nothing = error "addMaybe: Nothing to add"
addMaybe x (Just y) = x + y

val :: Int
val = addMaybe (error "bang") Nothing
