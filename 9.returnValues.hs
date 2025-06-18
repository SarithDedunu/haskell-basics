 
--Using a String Parameter
sayHi :: String -> String -- takes a String as input and returns a String as output.
sayHi name = "Hello " ++ name


cube :: Int -> Int
cube num = num * num * num 

main :: IO()
main = do 
    let resultHi = sayHi "Kavindu"
    let result = cube 3
    print("The result is " ++ show result)
    print resultHi


--Note
-- ->IO is only used in type assignment only if interacting with console