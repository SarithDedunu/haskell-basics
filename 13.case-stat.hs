main :: IO()
main = do

    let grade = "B"

    case grade of
        "A" -> putStrLn "Great Work"
        "B" -> putStrLn "Pretty Good"
        "C" -> putStrLn "Did alright"
        "D" -> putStrLn "Not so great"
        _ -> putStrLn "Failed"
        
        