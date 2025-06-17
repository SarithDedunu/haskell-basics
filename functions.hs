 -- "do" is needed when we print multiple lines in the function

sayHi = do 
    putStrLn "Hello User!"
    putStrLn "Welcome!"


main = do -- function which is called when we first run the program
    putStrLn "First"
    sayHi
    putStrLn "Second"