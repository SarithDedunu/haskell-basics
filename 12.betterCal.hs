main :: IO ()
main = do
    putStrLn "Welcome to Haskell made Calculator"
    putStrLn "---"
    putStrLn "Enter first number: "
    number1 <- getLine
    putStrLn "Enter second number: "
    number2 <- getLine

    putStrLn "Please select the operation: \n1. Addition + \n2. Subtraction - \n3. Multiplication * \n4. Division /"
    putStrLn "Operation: "
    operation <- getLine

    let firstNumber = read number1 :: Double
    let secondNumber = read number2 :: Double

    let result = case operation of
            "+" -> firstNumber + secondNumber
            "-" -> firstNumber - secondNumber
            "*" -> firstNumber * secondNumber
            "/" -> firstNumber / secondNumber
            _   -> 0


    putStrLn ("Answer = " ++ show result)