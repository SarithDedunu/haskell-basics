-- to name a variable outside main let is not necessary
-- Use camelCase for variable names in Haskell

name :: String --type assignment
name = "Kavindu"

numOfGifts :: Integer --type assignment
numOfGifts = 36  

myLetter :: Char --type assignment
myLetter = 'A'

myGpa :: Double
myGpa = 3.71 --type assignment

main = do 
    putStrLn name
    print numOfGifts
    print myLetter
    print myGpa

