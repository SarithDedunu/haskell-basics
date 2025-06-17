main = do
    putStrLn "Please enter your name: "
    name <- getLine

    putStrLn "Please enter your age: "
    age <- getLine

    putStrLn ("Your name is " ++ name ++ " and your age is " ++ age)

    --Type conversion: String → Int
    let ageAsNumber = read age :: Int
    let newAge = ageAsNumber + 10

    putStrLn ("Your age in 10 years will be " ++ show newAge)

--Notes
{- 
    - getLine is an IO action that reads a line of input from the user as a String.
    - let is used to define variables (bindings) within a do block.
-}