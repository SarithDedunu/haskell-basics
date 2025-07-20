-- Function using GUARDS
travelToWork :: String -> Bool -> IO ()
travelToWork weather isRaining
  | weather == "Cloudy" || isRaining = putStrLn "Drive to work"
  | otherwise                        = putStrLn "Walk to work"

-- Function using CASE expression
travelToWorkCase :: String -> Bool -> IO ()
travelToWorkCase weather isRaining =
  case (weather, isRaining) of
    ("Cloudy", _) -> putStrLn "Drive to work"
    (_, True)     -> putStrLn "Drive to work"
    (_, False)    -> putStrLn "Walk to work"

-- Another example using GUARDS
travelToWork2 :: String -> IO ()
travelToWork2 weather
  | weather == "Sunny"  = putStrLn "Walking to work"
  | weather == "Cloudy" = putStrLn "Bike to work"
  | otherwise           = putStrLn "Drive to work"

-- Main function to test them
main :: IO ()
main = do
  let isRaining = False
  putStrLn "-- Using Guards --"
  travelToWork "Cloudy" isRaining
  putStrLn "-- Using Case --"
  travelToWorkCase "Sunny" isRaining
  putStrLn "-- Another Guard Example --"
  travelToWork2 "Sunny"
