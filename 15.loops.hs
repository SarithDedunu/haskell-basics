-- Recursion
-- Printing 1 -100 

printTo100 :: Int -> IO() --Function signature
printTo100 num = do
    if num <= 100
        then do
            print num
            printTo100(num +1)
    else print "Completed the Loop"

main :: IO()
main = do 
        printTo100 1