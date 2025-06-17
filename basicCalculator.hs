import Language.Haskell.TH.PprLib (float)
import GHC.Exts.Heap (GenClosure(DoubleClosure))
main = do
    putStrLn "- Welcome to Basic Calculator -"
    putStrLn "------------------------------- "
    putStrLn "Enter First Number: "
    number1 <- getLine --Everything in getLine is stored as a string
    putStrLn "Enter Second Number: "
    number2 <- getLine
    
    let intNumber1 = read number1 :: Double
    let intNumber2 = read number2 :: Double
    let total = intNumber1 + intNumber2

    print("Addition of " ++ number1 ++ " and " ++ number2 ++ " is " ++ show total)

