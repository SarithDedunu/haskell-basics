-- PrimeChecker.hs
-- A simple program to check if a number is prime

isPrime :: Int -> Bool
isPrime n
    | n < 2 = False
    | otherwise = not (any divides [2 .. floor (sqrt (fromIntegral n))])
    where divides x = n `mod` x == 0

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Int
    if isPrime number
        then putStrLn (show number ++ " is a prime number.")
        else putStrLn (show number ++ " is not a prime number.")
