-- Entry point of the program
main = do
    putStrLn "Hi"

    -- Printing a number using show to convert it to a string
    putStrLn (show 36)
    -- Alternatively, we could use: print 36

    -- Variable declarations using 'let'
    let name = "Kavindu"
    let numOfGifts = 36  -- Use camelCase for variable names in Haskell

    -- String concatenation using ++ and converting Int to String with show
    putStrLn (name ++ " received " ++ show numOfGifts ++ " gifts for his birthday.")
    putStrLn ("In the " ++ show numOfGifts ++ "th gift, " ++ name ++ " got a toy car.")
    putStrLn (name ++ " got very excited and played with the car.")
    putStrLn ("But " ++ name ++ " forgot to do his homework.")
