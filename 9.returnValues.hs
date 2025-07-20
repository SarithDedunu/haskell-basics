-- Using a String Parameter
-- sayHi takes a String as input and returns a String as output.
sayHi :: String -> String
sayHi name = "Hello " ++ name

-- cube takes an Int and returns the cube of that number.
cube :: Int -> Int
cube num = num * num * num 

-- main is the entry point of the program.
-- Since it performs IO (printing), its type is IO ()
main :: IO ()
main = do 
    let resultHi = sayHi "Kavindu"  -- resultHi is just a String (pure value)
    let result = cube 3             -- result is an Int (pure value)
    print ("The result is " ++ show result) -- Need 'show' to convert Int to String for printing
    print resultHi                  -- Can print a String directly

-- Notes:
-- 1. The return type of a function depends on what it returns.
--    If a function returns a string value (without printing), it's just 'String'.
--    Example: sayHi :: String -> String
--
-- 2. Use '-> IO ()' in type signatures ONLY if the function performs input/output
--    actions (like printing or reading input).
--    Example: main :: IO ()
--
-- 3. Pure functions (like cube, sayHi) do not involve IO.
--    Their output depends only on the input and they always return the same value.
--
-- 4. 'let' is used to define constants or bindings inside a 'do' block.
--
-- 5. 'print' automatically converts values (using Show) and outputs them to the console.
--    So you don't need 'show' when using print with strings, but you do for numbers with concatenation.

-- Summary:
-- - Use 'String -> String' for pure text-based functions.
-- - Use 'IO ()' if the function prints or gets input.
-- - Only functions doing console interaction require IO types.
