-- | sayHi is a function that takes a String and an Int, and returns an IO action.
-- The IO () means it performs input/output but returns no useful value (like void).
sayHi :: String -> Int -> IO ()
sayHi name age =
    -- "putStrLn" is used to print to the console
    -- "show" converts an Int to a String so it can be concatenated
    putStrLn ("Hello " ++ name ++ ". You are " ++ show age ++ " years old.")

-- | main is the entry point of any Haskell program.
-- The "do" block allows sequencing multiple IO actions.
main :: IO ()
main = do
    putStrLn "First"              -- This line prints "First"
    sayHi "Kavindu" 25            -- This calls sayHi with a name and age
    putStrLn "Last"               -- This line prints "Last"

-- | Note:
-- If main only has one line, you can skip the 'do' block, like:
-- main = putStrLn "Hello"
