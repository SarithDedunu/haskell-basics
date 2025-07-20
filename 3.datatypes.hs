-- Variable declarations with type annotations
-- let is NOT used when defining variables globally

name :: String         -- Type: String (Type Assignments)
name = "Kavindu"

numOfGifts :: Integer  -- Type: Integer
numOfGifts = 36

myLetter :: Char       -- Type: Character
myLetter = 'A'

myGpa :: Double        -- Type: Double (for decimal values)
myGpa = 3.71

-- Entry point of the Haskell program
main = do 
    putStrLn name         -- putStrLn prints a string with a newline
    print numOfGifts      -- print can handle numbers, chars, etc.
    print myLetter
    print myGpa

{- 
    - Variables declared outside main don't need let - Only needed inside main
    - Haskell uses strong typing. You can (and often should) specify the type using ::.
    - :: symbol means "has the type of". - used for type annotations
    - print can handle most types by internally converting them to String using show.
    - Variables in Haskell are immutable — once defined, their values cannot be changed.
    - Naming convention: use camelCase for variables and functions.
-}