 -- "do" is needed when we print multiple lines in the function
sayHi :: String -> Int-> IO() --type signature,  means sayHi takes a String as input (the name)
sayHi name age =  putStrLn("Hello " ++ name ++ "You are " ++ show age ++ " years old.")


main :: IO () --IO meaning we are putting something on the console
main = do -- function which is called when we first run the program
    putStrLn "First"
    sayHi "Kavindu" 25
    putStrLn "Last"