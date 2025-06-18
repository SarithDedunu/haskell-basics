travelToWork :: String -> Bool -> IO()
travelToWork weather isRaining = do
    if weather =="Cloudy" || isRaining
        then putStrLn "Drive to work"
        else putStrLn "Walk to work"


{-
    if weather == "Sunny"
        then putStrLn "walking to work"
        else if weather == "Cloudy"
            then putStrLn "Bike to work"
        else putStrLn "Drive to work"
-}
main :: IO()
main = do
    let isRaining = False
    travelToWork "Cloudy" isRaining

