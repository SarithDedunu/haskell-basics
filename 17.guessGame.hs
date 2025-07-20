--Writing a simple Haskell program that implements a guessing game where the user must guess a predefined secret number.

runGame :: IO ()
runGame = do
    let secretNumber = "5"  -- Fixed typo
    putStrLn "Guess the number (1-10): "
    userNumber <- getLine

    if userNumber == secretNumber
    then putStrLn "You Won!"
    else do
        putStrLn "Try again!"
        runGame  -- Recursive retry

main :: IO ()
main = runGame